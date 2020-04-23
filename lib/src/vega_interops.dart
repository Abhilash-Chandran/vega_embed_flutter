@JS()
library vega_interops;

import 'package:js/js.dart';

@JS('JSON.parse')
external dynamic parse(dynamic);

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
  external get mode;
  external get theme;
  external get defaultStyle;
  external get renderer;
  external get toolTip;
  external get width;
  external get height;
  external get padding;
  external get actions;
  external get scaleFactor;
  external get editorUrl;
  external get sourceHeader;
  external get downloadFileName;
  external get formatLocale;
  external get timeFormatLocale;
  external get logLevel;
  external get i18n;
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
  external get left;
  external get right;
  external get top;
  external get bottom;
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

  external get editor;
  external get export;
  external get source;
  external get compiled;
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

  external get decimal;
  external get thousands;
  external get groupings;
  external get currency;
  external get numerals;
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

  external get dateTime;
  external get date;
  external get time;
  external get periods;
  external get days;
  external get shortDays;
  external get months;
  external get shortMonths;
}
