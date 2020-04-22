import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set to false will give simple links
/// for the actions menu on top of the chart.
class Example5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_index_chart.vl.json',
      vegaOptions: VegaEmbedOptions(
        defaultStyle: false,
      ),
    );
  }
}
