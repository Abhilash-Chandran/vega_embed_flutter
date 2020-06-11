import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_webview.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleWebViewApp();
  }
}

class ExampleWebViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: VegaLiteWebViewEmbedder(
                  vegaLiteSpecLocation: 'vega_lite_specs/bar_chart copy.json',
                  vegaEmbedOptions: VegaEmbedOptions(theme: 'dark'),
                ),
              ),
              Expanded(
                child: VegaLiteWebViewEmbedder(
                  vegaLiteSpecLocation:
                      'vega_lite_specs/interactive_index_chart.vl.json',
                  vegaEmbedOptions: VegaEmbedOptions(theme: 'quartz'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
