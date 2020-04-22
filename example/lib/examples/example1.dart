import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set the theme as 'dark'.
class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'example1',
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_multiline_plot.json',
      vegaOptions: VegaEmbedOptions(
        theme: 'dark',
      ),
    );
  }
}
