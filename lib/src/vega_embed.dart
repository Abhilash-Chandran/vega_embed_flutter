import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:vega_embed_flutter/src/vega_interops.dart';

class VegaLiteEmbedder extends StatefulWidget {
  /// This viewFactory ID should be unique accross elements.
  /// Please ensure this. Otherwise it might result in some unwanted behaviour.
  final String viewFactoryId;

  /// This is usually a URL pointing to json file or a json file served as part of your web assets.
  final String vegaLiteSchemaLocation;

  /// Set of options for vegaEmbeder. Please check the documentation of vega-embed for more info.
  /// This is dartified version of the options avaailable.
  /// Please bear in mind this functionality is not tested and could break easily.
  final VegaEmbedOptions vegaOptions;
  VegaLiteEmbedder({
    @required this.viewFactoryId,
    @required this.vegaLiteSchemaLocation,
    this.vegaOptions,
  })  : assert(vegaLiteSchemaLocation != null),
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
    bodyElement.append(divElement);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadAvailableStyleToShadowDom();
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(widget.viewFactoryId,
        (int viewId) {
      return bodyElement;
    });
    return HtmlElementView(viewType: widget.viewFactoryId);
  }

  loadAvailableStyleToShadowDom() {
    vegaEmbed(divElement, widget.vegaLiteSchemaLocation);
    StyleElement vegaEmbedStyle = document.getElementById('vega-embed-style');
    StyleElement vegaToolTipStyle =
        document.getElementById('vega-tooltip-style');
    if (vegaEmbedStyle != null) {
      bodyElement.append(vegaEmbedStyle);
    }
    if (vegaToolTipStyle != null) {
      bodyElement.append(vegaToolTipStyle);
    }
    setState(() {});
  }
}
