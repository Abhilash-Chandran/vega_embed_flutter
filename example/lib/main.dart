import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InteractiveSplom(),
    );
  }
}

class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyBarChart',
      vegaLiteSchemaLocation: '/assets/vega_schemas/bar_chart.json',
    );
  }
}

class InteractiveSplom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyBarChart',
      vegaLiteSchemaLocation: '/assets/vega_schemas/interactive_splom.json',
    );
  }
}

class InteractiveMultiLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'InteractiveMultiLine',
      vegaLiteSchemaLocation:
          '/assets/vega_schemas/interactive_multiline_plot.json',
    );
  }
}
