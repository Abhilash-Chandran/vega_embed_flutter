# vega_embed_flutter

A Flutter widget to embed vega-lite charts to flutter web. Works only in Flutter web as of now. This could be adapted
to be used with flutter webview widget.

![A an example chart](chart_example_1.png)

## Getting Started

### Import Vega related Javascript files.

Start by adding the `script` tag for vega related java script files. For example.

**Index.html**

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <script src="https://cdn.jsdelivr.net/npm/vega@5"></script>
    <script src="https://cdn.jsdelivr.net/npm/vega-lite@4"></script>
    <script src="https://cdn.jsdelivr.net/npm/vega-embed@6"></script>
    <title>vega_flutter</title>
  </head>
  <body>
    <script src="main.dart.js" type="application/javascript"></script>
  </body>
</html>
```

### Add your vega lite schema files

Vega-Lite and Vega dfeines its visualsation in the form of json file. So for you project it would be easy to maintain all this vega-lite spec files in a folder say _vega_lite_specs_ folder. For example

```
$Project_root\vega_lite_specs
              |_ bart_chart.json
              |_ interactive_multiline_plot.json
```

### Add assets entry in pupspec.yaml

In order for the web build to pick up the json schemas add it your `pubspec.yaml`. For e.g.

```
flutter:
  uses-material-design: true
  # This line includes all the files these directories during the build process
  # and placess them under build/web/assets folder.
  assets:
    - vega_lite_specs/
```

### Import the file use the widget

Just import the `vega_embed_flutter` library as below

`import 'package:vega_embed_flutter/vega_embed_flutter.dart';`

Create a normal stateless/ful widget and use it as a normal stateless/ful widget.

```
class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VegaLiteEmbedder(
      viewFactoryId: 'MyBarChart',
      vegaLiteSpecLocation: '/assets/vega_lite_specs/bar_chart.json',
    );
  }
}
```
