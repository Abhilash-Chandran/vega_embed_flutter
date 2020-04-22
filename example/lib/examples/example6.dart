import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set to a specifc style sheet
/// to adapt the style of the embed menu. E.g. Custom Menu colors.
class Example6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_index_chart.vl.json',
      vegaOptions: VegaEmbedOptions(
        defaultStyle: '''
          .vega-embed .vega-actions a {
            background: yellow;
            color:red;
          }
        ''',
      ),
    );
  }
}
