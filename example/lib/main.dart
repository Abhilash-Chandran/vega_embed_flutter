import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vega_embed_flutter/vega_embed_flutter.dart';
import 'examples/examples.dart';
import 'code_box.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExampleApp();
  }
}

class ExampleApp extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Vega embed demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: selectedIndex != 0
                      ? null
                      : BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.deepOrange,
                              width: 2.0,
                            ),
                          ),
                        ),
                  // padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 0;
                        _controller.animateTo(0);
                      });
                    },
                    color: selectedIndex == 0
                        ? Colors.transparent
                        : Colors.amber[100],
                    child: Text(
                      'Plots Demo',
                      style: TextStyle(backgroundColor: Colors.transparent),
                    ),
                  ),
                ),
                Container(
                  decoration: selectedIndex != 1
                      ? null
                      : BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.deepOrange,
                              width: 2.0,
                            ),
                          ),
                        ),
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: FlatButton(
                    color: selectedIndex == 1
                        ? Colors.transparent
                        : Colors.amber[100],
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;
                        _controller.animateTo(1);
                      });
                    },
                    child: Text(
                      'Embed Options Demo',
                      style: TextStyle(backgroundColor: Colors.transparent),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Expanded(
              flex: 10,
              child: TabBarView(
                controller: _controller,
                children: [
                  MainDemoPage(),
                  PlotWithOptions(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainDemoPage extends StatelessWidget {
  const MainDemoPage({
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
      vegaLiteSpecLocation: 'assets/vega_lite_specs/bar_chart.json',
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
      vegaLiteSpecLocation: 'assets/vega_lite_specs/interactive_splom.json',
      vegaOptions: VegaEmbedOptions(
        theme: 'latimes',
      ),
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
          'assets/vega_lite_specs/interactive_multiline_plot.json',
      vegaOptions: VegaEmbedOptions(
        theme: 'dark',
      ),
    );
  }
}

class PlotWithOptions extends StatefulWidget {
  @override
  _PlotWithOptionsState createState() => _PlotWithOptionsState();
}

class _PlotWithOptionsState extends State<PlotWithOptions> {
  PageController _pageController = PageController();
  StreamController<List<int>> _pageIndexStreamCntlr =
      StreamController<List<int>>();
  Stream<List<int>> pageIndexStream;
  @override
  void initState() {
    super.initState();
    pageIndexStream = _pageIndexStreamCntlr.stream;
    // Setting first page.
    _pageIndexStreamCntlr.add([1, 14, 14]);
  }

  @override
  void dispose() {
    _pageController.dispose();
    pageIndexStream.drain();
    _pageIndexStreamCntlr.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AssetBundle bundle = DefaultAssetBundle.of(context);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(top: 4.0),
            child: Material(
              elevation: 8.0,
              child: ListView(
                children: [
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    0,
                    'Dark Theme',
                    hlStart: 14,
                    hlEnd: 14,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    1,
                    'Setting different theme',
                    hlStart: 13,
                    hlEnd: 13,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    2,
                    'Adjust height and width',
                    hlStart: 14,
                    hlEnd: 16,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    3,
                    'Render as svg',
                    hlStart: 15,
                    hlEnd: 15,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    4,
                    'Always open menu',
                    hlStart: 15,
                    hlEnd: 15,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    5,
                    'Custom Menu style',
                    hlStart: 15,
                    hlEnd: 20,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    6,
                    'Add padding to plot',
                    hlStart: 14,
                    hlEnd: 17,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    7,
                    'Change Menu Language',
                    hlStart: 14,
                    hlEnd: 17,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    8,
                    'Change Scale of export',
                    hlStart: 13,
                    hlEnd: 14,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    9,
                    'Remove Editor and Source options from menu',
                    hlStart: 13,
                    hlEnd: 16,
                  ),
                  ListButton(
                    _pageController,
                    _pageIndexStreamCntlr,
                    10,
                    'Customize Export file name',
                    hlStart: 13,
                    hlEnd: 13,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: StreamBuilder(
            stream: pageIndexStream,
            builder: (context, strmSanp) {
              if (strmSanp.hasData) {
                bundle = DefaultAssetBundle.of(context);
                String file = 'lib/examples/example${strmSanp.data[0]}.dart';
                return FutureBuilder(
                    future: bundle.loadString(file, cache: true),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return CodeBox(
                          code: snapshot.data,
                          viewId: 'codeBox_${strmSanp.data[0]}',
                          key: ValueKey('codeBox_${strmSanp.data[0]}'),
                          hlStart: strmSanp.data[1],
                          hlEnd: strmSanp.data[2],
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.deepOrange,
                        ),
                      );
                    });
              }
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
              );
            },
          ),
        ),
        Expanded(
            flex: 7, child: PlotOptionsView(pageController: _pageController)),
      ],
    );
  }
}

class ListButton extends StatelessWidget {
  final PageController controller;
  final StreamController _pageIndexController;
  final int index;
  final String label;
  final int hlStart;
  final int hlEnd;
  const ListButton(
      this.controller, this._pageIndexController, this.index, this.label,
      {this.hlStart = 0, this.hlEnd = 0, key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.jumpToPage(index);
          _pageIndexController.add([index + 1, hlStart, hlEnd]);
          // _pageIndexController.add(index + 1);
        },
        child: ListTile(
          title: Text(label),
        ));
  }
}

class PlotOptionsView extends StatefulWidget {
  final PageController pageController;
  PlotOptionsView({this.pageController});
  @override
  _PlotOptionsViewState createState() => _PlotOptionsViewState();
}

class _PlotOptionsViewState extends State<PlotOptionsView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        Example1(),
        Example2(),
        Example3(),
        Example4(),
        Example5(),
        Example6(),
        Example7(),
        Example8(),
        Example9(),
        Example10(),
        Example11(),
      ],
    );
  }
}
