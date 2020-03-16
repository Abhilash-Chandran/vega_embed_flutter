import 'package:flutter/material.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';

class ExampleApp extends StatelessWidget {
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
    return Row(children: [
      Expanded(
        flex: 2,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(color: Colors.purple),
                  bottom: BorderSide(color: Colors.purple),
                )),
                child: InteractiveMultiLineChart(),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(color: Colors.purple),
                )),
                child: BarChart(),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 3,
        child: InteractiveSplom(),
      ),
    ]);
  }
}

/// A simple bar chart with inline data.
class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyBarChart',
      vegaLiteSpecLocation: '/assets/vega_lite_specs/bar_chart.json',
    );
  }
}

/// An interactive multi line plot with hover tool tip.
/// Uses the VegaEmbedOptions to set the theme as 'quartz'.
class InteractiveSplom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyInteractiveSplom',
      vegaLiteSpecLocation: '/assets/vega_lite_specs/interactive_splom.json',
      vegaOptions: VegaEmbedOptions()..theme = 'quartz',
    );
  }
}

/// An interactive scatter plot of the Iris data set.
/// Uses the VegaEmbedOptions to set the theme as 'dark'.
class InteractiveMultiLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'InteractiveMultiLine',
      vegaLiteSpecLocation:
          '/assets/vega_lite_specs/interactive_multiline_plot.json',
      vegaOptions: VegaEmbedOptions()..theme = 'dark',
    );
  }
}
