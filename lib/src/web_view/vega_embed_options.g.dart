// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vega_embed_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VegaEmbedOptions _$_$_VegaEmbedOptionsFromJson(Map<String, dynamic> json) {
  return _$_VegaEmbedOptions(
    mode: json['mode'] as String,
    theme: json['theme'] as String,
    defaultStyle: json['defaultStyle'],
    renderer: json['renderer'] as String,
    logLevel: _$enumDecodeNullable(_$LogLevelEnumMap, json['logLevel']),
    tooltip: json['tooltip'],
    width: json['width'] as num,
    height: json['height'] as num,
    padding: json['padding'] == null
        ? null
        : Padding.fromJson(json['padding'] as Map<String, dynamic>),
    actions: json['actions'] == null
        ? null
        : Actions.fromJson(json['actions'] as Map<String, dynamic>),
    scaleFactor: json['scaleFactor'] as num,
    editorUrl: json['editorUrl'] as String,
    sourceHeader: json['sourceHeader'] as String,
    sourceFooter: json['sourceFooter'] as String,
    i18n: json['i18n'] == null
        ? null
        : I18N.fromJson(json['i18n'] as Map<String, dynamic>),
    downloadFileName: json['downloadFileName'] as String,
    formatLocale: json['formatLocale'] == null
        ? null
        : FormatLocale.fromJson(json['formatLocale'] as Map<String, dynamic>),
    timeFormatLocale: json['timeFormatLocale'] == null
        ? null
        : TimeFormatLocale.fromJson(
            json['timeFormatLocale'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VegaEmbedOptionsToJson(
        _$_VegaEmbedOptions instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'theme': instance.theme,
      'defaultStyle': instance.defaultStyle,
      'renderer': instance.renderer,
      'logLevel': _$LogLevelEnumMap[instance.logLevel],
      'tooltip': instance.tooltip,
      'width': instance.width,
      'height': instance.height,
      'padding': instance.padding,
      'actions': instance.actions,
      'scaleFactor': instance.scaleFactor,
      'editorUrl': instance.editorUrl,
      'sourceHeader': instance.sourceHeader,
      'sourceFooter': instance.sourceFooter,
      'i18n': instance.i18n,
      'downloadFileName': instance.downloadFileName,
      'formatLocale': instance.formatLocale,
      'timeFormatLocale': instance.timeFormatLocale,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$LogLevelEnumMap = {
  LogLevel.None: 'None',
  LogLevel.Error: 'Error',
  LogLevel.Warn: 'Warn',
  LogLevel.Info: 'Info',
  LogLevel.Debug: 'Debug',
};

_$_I18N _$_$_I18NFromJson(Map<String, dynamic> json) {
  return _$_I18N(
    COMPILED_ACTION: json['COMPILED_ACTION'] as String,
    EDITOR_ACTION: json['EDITOR_ACTION'] as String,
    PNG_ACTION: json['PNG_ACTION'] as String,
    SOURCE_ACTION: json['SOURCE_ACTION'] as String,
    SVG_ACTION: json['SVG_ACTION'] as String,
  );
}

Map<String, dynamic> _$_$_I18NToJson(_$_I18N instance) => <String, dynamic>{
      'COMPILED_ACTION': instance.COMPILED_ACTION,
      'EDITOR_ACTION': instance.EDITOR_ACTION,
      'PNG_ACTION': instance.PNG_ACTION,
      'SOURCE_ACTION': instance.SOURCE_ACTION,
      'SVG_ACTION': instance.SVG_ACTION,
    };

_$_Padding _$_$_PaddingFromJson(Map<String, dynamic> json) {
  return _$_Padding(
    left: json['left'] as num,
    right: json['right'] as num,
    top: json['top'] as num,
    bottom: json['bottom'] as num,
  );
}

Map<String, dynamic> _$_$_PaddingToJson(_$_Padding instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
      'top': instance.top,
      'bottom': instance.bottom,
    };

_$_Actions _$_$_ActionsFromJson(Map<String, dynamic> json) {
  return _$_Actions(
    editor: json['editor'] as bool ?? true,
    export: json['export'] as bool ?? true,
    source: json['source'] as bool ?? true,
    compiled: json['compiled'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_ActionsToJson(_$_Actions instance) =>
    <String, dynamic>{
      'editor': instance.editor,
      'export': instance.export,
      'source': instance.source,
      'compiled': instance.compiled,
    };

_$_FormLocale _$_$_FormLocaleFromJson(Map<String, dynamic> json) {
  return _$_FormLocale(
    decimal: json['decimal'] as String,
    thousands: json['thousands'] as String,
    groupings: (json['groupings'] as List)?.map((e) => e as num)?.toList(),
    currency: (json['currency'] as List)?.map((e) => e as String)?.toList(),
    numerals: (json['numerals'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_FormLocaleToJson(_$_FormLocale instance) =>
    <String, dynamic>{
      'decimal': instance.decimal,
      'thousands': instance.thousands,
      'groupings': instance.groupings,
      'currency': instance.currency,
      'numerals': instance.numerals,
    };

_$_TimeFormatLocale _$_$_TimeFormatLocaleFromJson(Map<String, dynamic> json) {
  return _$_TimeFormatLocale(
    dateTime: json['dateTime'] as String,
    date: json['date'] as String,
    time: json['time'] as String,
    periods: (json['periods'] as List)?.map((e) => e as String)?.toList(),
    days: (json['days'] as List)?.map((e) => e as String)?.toList(),
    shortDays: (json['shortDays'] as List)?.map((e) => e as String)?.toList(),
    months: (json['months'] as List)?.map((e) => e as String)?.toList(),
    shortMonths:
        (json['shortMonths'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_TimeFormatLocaleToJson(
        _$_TimeFormatLocale instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'date': instance.date,
      'time': instance.time,
      'periods': instance.periods,
      'days': instance.days,
      'shortDays': instance.shortDays,
      'months': instance.months,
      'shortMonths': instance.shortMonths,
    };
