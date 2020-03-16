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
    // todo: Define LogLevel
    dynamic tooltip,
    // todo: Define loader
    // todo: define patch
    num width,
    num height,
    // todo: define padding
    // todo: define actions
    num scaleFactor,
    // todo: define config
    String editorUrl,
    String sourceHeader,
    String sourceFoorter,
    // todo: define hover,
    // todo: define i18n
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
  external get scaleFactor;
  external get editorUrl;
  external get sourceHeader;
  external get downloadFileName;
  external get formatLocale;
  external get timeFormatLocale;

  external set theme(String theme);
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
