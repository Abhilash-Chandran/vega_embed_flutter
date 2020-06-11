import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:vega_embed_flutter/src/vega_interops.dart';
import 'package:vega_embed_flutter/src/vega-related-css.dart';


class VegaLiteEmbedder extends StatefulWidget {
  /// This viewFactory ID should be unique accross elements.
  /// Please ensure this. Otherwise it might result in some unwanted behaviour.
  final String viewFactoryId;

  /// This is usually a URL pointing to json file or a json file served as part of your web assets.
  final String vegaLiteSpecLocation;

  /// Set of options for vegaEmbeder. Please check the documentation of vega-embed for more info.
  /// This is dartified version of the options avaailable.
  /// Please bear in mind this functionality is not tested and could break easily.
  final VegaEmbedOptions vegaOptions;
  VegaLiteEmbedder({
    @required this.viewFactoryId,
    this.vegaLiteSpecLocation,
    this.vegaOptions,
  })  : assert(vegaLiteSpecLocation != null, 'Provide a vegalitespeclocation.'),
        assert(viewFactoryId != null);
  @override
  _VegaLiteEmbedderState createState() => _VegaLiteEmbedderState();
}

class _VegaLiteEmbedderState extends State<VegaLiteEmbedder> {
  /// The Body elemene which hold the styles and scripts
  BodyElement bodyElement;

  /// The div element where the chart will be embedded
  DivElement divElement;

  @override
  void initState() {
    super.initState();
    divElement = DivElement()..id = widget.viewFactoryId;
    bodyElement = BodyElement();
    // add the div element which holds the plot.
    bodyElement.append(divElement);

    // Add the css style elements to renders plots options properly.
    StyleElement vegaEmbedStyle = StyleElement()..text = VegaEmbedStyle;
    StyleElement vegaToolTipStyle = StyleElement()..text = VegaToolTipStyle;
    bodyElement.append(vegaEmbedStyle);
    bodyElement.append(vegaToolTipStyle);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(widget.viewFactoryId,
        (int viewId) {
      return bodyElement;
    });
    if (widget.vegaLiteSpecLocation != null) {
      if (widget.vegaOptions != null) {
        if (widget.vegaOptions.defaultStyle is String) {
          StyleElement embedStyle = StyleElement()
            ..innerText = widget.vegaOptions.defaultStyle.toString();
          bodyElement.append(embedStyle);
        }
        vegaEmbed(divElement, widget.vegaLiteSpecLocation, widget.vegaOptions);
      } else {
        vegaEmbed(divElement, widget.vegaLiteSpecLocation);
      }
    } else {
      divElement
          .appendText('Something went wrong. A vega-lite Spec is manadatory.');
    }
    return HtmlElementView(viewType: widget.viewFactoryId);
  }
}
