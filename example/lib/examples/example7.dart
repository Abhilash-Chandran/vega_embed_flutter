import 'package:flutter/material.dart' hide Padding;
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set padding for the embeded plot.
class Example7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_index_chart.vl.json',
      vegaOptions: VegaEmbedOptions(
        padding: Padding(
          bottom: 100,
          top: 50,
        ),
      ),
    );
  }
}
