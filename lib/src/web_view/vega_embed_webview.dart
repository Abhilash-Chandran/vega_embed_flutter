import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/src/web_view/vega_embed_options.dart';

import 'package:webview_flutter/webview_flutter.dart';

class VegaLiteWebViewEmbedder extends StatefulWidget {
  /// This is usually a json file served as part of your assets.
  final String vegaLiteSpecLocation;

  final VegaEmbedOptions vegaEmbedOptions;

  /// Set of options for vegaEmbeder. Please check the documentation of vega-embed for more info.
  /// This is dartified version of the options avaailable.
  VegaLiteWebViewEmbedder({
    @required
    this.vegaLiteSpecLocation,
    this.vegaEmbedOptions,
  }) : assert(vegaLiteSpecLocation != null, 'Provide a vegalitespeclocation.');
  @override
  _VegaLiteWebViewEmbedderState createState() =>
      _VegaLiteWebViewEmbedderState();
}

class _VegaLiteWebViewEmbedderState extends State<VegaLiteWebViewEmbedder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString(widget.vegaLiteSpecLocation),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var _divId = 'plot_div';
          var vegaEmbedScript = widget.vegaEmbedOptions == null
              ? 'vegaEmbed("#$_divId", ${snapshot.data})'
              : 'vegaEmbed("#$_divId", ${snapshot.data}, ${json.encode(widget.vegaEmbedOptions.toJson())})';
          var html = '''
        <!DOCTYPE html>
        <html lang="en">
          <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Document</title>        
                <script src="https://cdn.jsdelivr.net/npm/vega@5"></script>
                <script src="https://cdn.jsdelivr.net/npm/vega-lite@4"></script>
                <script src="https://cdn.jsdelivr.net/npm/vega-embed@6"></script>
          </head>
          <div id="$_divId" width="100%" height="50%"></div>
          <script type="text/javascript">           
            $vegaEmbedScript;
          </script>
        </html>
        ''';
          return WebView(
              javascriptMode: JavascriptMode.unrestricted,
              onWebResourceError: (error) {
                print(error);
              },
              onWebViewCreated: (WebViewController webViewController) {
                webViewController.loadUrl('data:text/html;charset=utf-8,' +
                    Uri.encodeComponent(html));
              });
        }
        if (snapshot.hasError) {
          Center(
            child: Text(
              'Sorry couldn\'t load the spec. Please check the path : ${widget.vegaLiteSpecLocation}',
              softWrap: true,
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
