import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set specific width and height
class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_multiline_plot.json',
      vegaOptions: VegaEmbedOptions(
        height: 400,
        width: 600,
        theme: 'latimes',
      ),
    );
  }
}
