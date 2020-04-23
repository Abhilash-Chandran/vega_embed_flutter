import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set the theme as 'latimes'.
class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'example2',
      vegaLiteSpecLocation: 'assets/vega_lite_specs/bar_chart.json',
      vegaOptions: VegaEmbedOptions(
        theme: 'latimes',
      ),
    );
  }
}
