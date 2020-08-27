// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vega_embed_options.freezed.dart';
part 'vega_embed_options.g.dart';

@freezed

/// Embed options for VegaLiteWebViewEmbedder
abstract class VegaEmbedOptions with _$VegaEmbedOptions {
  /// Constructor
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
    /// Url for the vegaEditor
    String editorUrl,

    ///
    String sourceHeader,
    String sourceFooter,
    // todo: define hover,
    I18N i18n,
    String downloadFileName,
    FormatLocale formatLocale,
    TimeFormatLocale timeFormatLocale,
  }) = _VegaEmbedOptions;

  /// build this object from a Json map
  factory VegaEmbedOptions.fromJson(Map<String, dynamic> json) =>
      _$VegaEmbedOptionsFromJson(json);
}

@freezed

/// This property maps keys to string values for the action's text.
/// By default, the text is in English.
abstract class I18N with _$I18N {
  //// Constructor
  factory I18N({
    String COMPILED_ACTION,
    String EDITOR_ACTION,
    String PNG_ACTION,
    String SOURCE_ACTION,
    String SVG_ACTION,
  }) = _I18N;

  /// build this object from a Json map
  factory I18N.fromJson(Map<String, dynamic> json) => _$I18NFromJson(json);
}

/// Sets the current log level.
enum LogLevel {
  /// Log level None
  None,

  /// Log level error
  Error,

  /// Log level warn
  Warn,

  /// Log level Info
  Info,

  /// Log level Debug
  Debug,
}

@freezed

/// Sets the view padding in pixels.
abstract class Padding with _$Padding {
  /// Constructor
  factory Padding({
    num left,
    num right,
    num top,
    num bottom,
  }) = _Padding;

  /// build this object from a Json map
  factory Padding.fromJson(Map<String, dynamic> json) =>
      _$PaddingFromJson(json);
}

@freezed

/// Export actions to show.
abstract class Actions with _$Actions {
  /// Constructor
  factory Actions({
    @Default(true) bool editor,
    @Default(true) bool export,
    @Default(true) bool source,
    @Default(false) bool compiled,
  }) = _Actions;

  /// build this object from a Json map
  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}

@freezed

/// Sets the default locale definition for number formatting. See the
/// d3-format locale collection for definition files for a variety of
/// languages. Note that this is a global setting.
abstract class FormatLocale with _$FormatLocale {
  /// Constructor
  factory FormatLocale({
    String decimal,
    String thousands,
    List<num> groupings,
    List<String> currency,
    List<String> numerals,
  }) = _FormLocale;

  /// build this object from a Json map
  factory FormatLocale.fromJson(Map<String, dynamic> json) =>
      _$FormatLocaleFromJson(json);
}

@freezed

/// Sets the default locale definition for date/time formatting. See the
/// d3-time-format locale collection for definition files for a variety of
/// languages. Note that this is a global setting.
abstract class TimeFormatLocale with _$TimeFormatLocale {
  /// Constructor
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

  /// build this object from a Json map
  factory TimeFormatLocale.fromJson(Map<String, dynamic> json) =>
      _$TimeFormatLocaleFromJson(json);
}
