import 'package:flutter/material.dart' hide Padding;
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set different name for the links.
/// The same can be used to set a different language.
class Example8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: UniqueKey().toString(),
      vegaLiteSpecLocation: 'assets/vega_lite_specs/bar_chart.json',
      vegaOptions: VegaEmbedOptions(
        i18n: I18N(
            SVG_ACTION: 'SVG Speichern',
            SOURCE_ACTION: 'Source anzeigen',
            PNG_ACTION: 'PNG Speichern'),
      ),
    );
  }
}
