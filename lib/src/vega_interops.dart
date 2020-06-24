@JS()
library vega_interops;

import 'package:js/js.dart';

@JS('vegaEmbed')
external void vegaEmbed(dynamic domElement, String vegaSchema,
    [VegaEmbedOptions vegaEmbedOptions]);

@JS('vegaEmbed')
external void vegaContainer(String vegsSchema,
    [VegaEmbedOptions vegaEmbedOptions]);

@JS()
@anonymous
class VegaEmbedOptions {
  external factory VegaEmbedOptions({
    String mode,
    String theme,
    dynamic defaultStyle,
    String renderer,
    LogLevel logLevel,
    dynamic tooltip,
    // todo: Define loader
    // todo: define patch
    num width,
    num height,
    Padding padding,
    Actions actions,
    num scaleFactor,
    // todo: define config
    String editorUrl,
    String sourceHeader,
    String sourceFoorter,
    // todo: define hover,
    I18N i18n,
    String downloadFileName,
    FormatLocale formatLocale,
    TimeFormatLocale timeFormatLocale,
  });
  external String get mode;
  external String get theme;
  external dynamic get defaultStyle;
  external String get renderer;
  external dynamic get toolTip;
  external num get width;
  external num get height;
  external Padding get padding;
  external Actions get actions;
  external num get scaleFactor;
  external String get editorUrl;
  external String get sourceHeader;
  external String get downloadFileName;
  external FormatLocale get formatLocale;
  external TimeFormatLocale get timeFormatLocale;
  external LogLevel get logLevel;
  external I18N get i18n;
}

@JS()
@anonymous
class I18N {
  external factory I18N({
    //ignore: non_constant_identifier_names
    String COMPILED_ACTION,
    //ignore: non_constant_identifier_names
    String EDITOR_ACTION,
    //ignore: non_constant_identifier_names
    String PNG_ACTION,
    //ignore: non_constant_identifier_names
    String SOURCE_ACTION,
    //ignore: non_constant_identifier_names
    String SVG_ACTION,
  });
}

enum LogLevel {
  None,
  Error,
  Warn,
  Info,
  Debug,
}

@JS()
@anonymous
class Padding {
  external factory Padding({
    num left,
    num right,
    num top,
    num bottom,
  });
  external num get left;
  external num get right;
  external num get top;
  external num get bottom;
}

@JS()
@anonymous
class Actions {
  external factory Actions({
    bool editor = true,
    bool export = true,
    bool source = true,
    bool compiled = false,
  });

  external bool get editor;
  external bool get export;
  external bool get source;
  external bool get compiled;
}

@JS()
@anonymous
class FormatLocale {
  external factory FormatLocale({
    String decimal,
    String thousands,
    List<num> groupings,
    List<String> currency,
    List<String> numerals,
  });

  external String get decimal;
  external String get thousands;
  external List<num> get groupings;
  external List<String> get currency;
  external List<String> get numerals;
}

@JS()
@anonymous
class TimeFormatLocale {
  external factory TimeFormatLocale({
    String dateTime,
    String date,
    String time,
    List<String> periods,
    List<String> days,
    List<String> shortDays,
    List<String> months,
    List<String> shortMonths,
  });

  external String get dateTime;
  external String get date;
  external String get time;
  external List<String> get periods;
  external List<String> get days;
  external List<String> get shortDays;
  external List<String> get months;
  external List<String> get shortMonths;
}
