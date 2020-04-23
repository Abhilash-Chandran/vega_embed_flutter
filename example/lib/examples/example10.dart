import 'package:flutter/material.dart' hide Padding, Actions;
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to diable some actions in the menu.
class Example10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation: 'assets/vega_lite_specs/bar_chart.json',
      vegaOptions: VegaEmbedOptions(
        actions: Actions(
          editor: false,
          source: false,
        ),
      ),
    );
  }
}
