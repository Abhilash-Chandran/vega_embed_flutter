// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CodeBox extends StatefulWidget {
  final String code;
  final String viewId;
  final int hlStart;
  final int hlEnd;
  const CodeBox({
    @required this.code,
    @required this.viewId,
    this.hlStart,
    this.hlEnd,
    Key key,
  }) : super(key: key);

  @override
  _CodeBoxState createState() => _CodeBoxState();
}

class _CodeBoxState extends State<CodeBox> {
  final IFrameElement iFrameElement = IFrameElement();
  String iFrameSrc;

  @override
  Widget build(BuildContext context) {
    iFrameSrc = '''
        <!DOCTYPE html>
        <html lang="en">
          <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Document</title>        
            <script src="https://cdn.jsdelivr.net/gh/google/code-prettify@master/loader/run_prettify.js?lang=dart&amp;skin=desert"></script> 
            <style>
            pre.prettyprint, code.prettyprint {
                  overflow: auto;
                  display: block;
                  font-size: 10pt;
              }
              li.L0, li.L1, li.L2, li.L3, li.L4,
              li.L5, li.L6, li.L7, li.L8, li.L9 {
                list-style-type: decimal;
              }
              #src li:nth-child(n+${widget.hlStart}):nth-child(-n+${widget.hlEnd}) {
                background: #4c4b4b;
              } 
            </style>       
          </head>
          <body onload="PR.prettyPrint()">
            <pre class="prettyprint linenums" id="src">${widget.code}</pre>            
          </body>
        </html>
        ''';
    String src =
        "data:text/html;charset=utf-8," + Uri.encodeComponent(iFrameSrc);
    iFrameElement
      ..id = '${widget.viewId}_ID'
      ..src = src
      ..style.border = '0';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(widget.viewId, (int viewId) {
      return iFrameElement;
    });
    return Card(
      child: HtmlElementView(
        viewType: widget.viewId,
        key: UniqueKey(),
      ),
    );
  }
}
