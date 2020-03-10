import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Vega=embed demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: BarChart(),
      ),
      Expanded(
        child: InteractiveMultiLineChart(),
      ),
      Expanded(
        child: InteractiveSplom(),
      ),
    ]);
  }
}

class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyBarChart',
      vegaLiteSpecLocation: '/assets/vega_lite_specs/bar_chart.json',
    );
  }
}

class InteractiveSplom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyInteractiveSplom',
      vegaLiteSpecLocation: '/assets/vega_lite_specs/interactive_splom.json',
    );
  }
}

class InteractiveMultiLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'InteractiveMultiLine',
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_multiline_plot.json',
    );
  }
}
