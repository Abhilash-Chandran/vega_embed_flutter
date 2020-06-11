import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vega_embed_options.freezed.dart';
part 'vega_embed_options.g.dart';

@freezed
abstract class VegaEmbedOptions with _$VegaEmbedOptions {
  factory VegaEmbedOptions({
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
  }) = _VegaEmbedOptions;
  factory VegaEmbedOptions.fromJson(Map<String, dynamic> json) =>
      _$VegaEmbedOptionsFromJson(json);
}

@freezed
abstract class I18N with _$I18N {
  factory I18N({
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
  }) = _I18N;
  factory I18N.fromJson(Map<String, dynamic> json) => _$I18NFromJson(json);
}

enum LogLevel {
  None,
  Error,
  Warn,
  Info,
  Debug,
}

@freezed
abstract class Padding with _$Padding {
  factory Padding({
    num left,
    num right,
    num top,
    num bottom,
  }) = _Padding;
  factory Padding.fromJson(Map<String, dynamic> json) =>
      _$PaddingFromJson(json);
}

@freezed
abstract class Actions with _$Actions {
  factory Actions({
    @Default(true) bool editor,
    @Default(true) bool export,
    @Default(true) bool source,
    @Default(false) bool compiled,
  }) = _Actions;
  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}

@freezed
abstract class FormatLocale with _$FormatLocale {
  factory FormatLocale({
    String decimal,
    String thousands,
    List<num> groupings,
    List<String> currency,
    List<String> numerals,
  }) = _FormLocale;

  factory FormatLocale.fromJson(Map<String, dynamic> json) =>
      _$FormatLocaleFromJson(json);
}

@freezed
abstract class TimeFormatLocale with _$TimeFormatLocale {
  factory TimeFormatLocale({
    String dateTime,
    String date,
    String time,
    List<String> periods,
    List<String> days,
    List<String> shortDays,
    List<String> months,
    List<String> shortMonths,
  }) = _TimeFormatLocale;
  factory TimeFormatLocale.fromJson(Map<String, dynamic> json) =>
      _$TimeFormatLocaleFromJson(json);
}
