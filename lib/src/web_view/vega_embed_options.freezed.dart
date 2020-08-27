// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vega_embed_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
VegaEmbedOptions _$VegaEmbedOptionsFromJson(Map<String, dynamic> json) {
  return _VegaEmbedOptions.fromJson(json);
}

class _$VegaEmbedOptionsTearOff {
  const _$VegaEmbedOptionsTearOff();

// ignore: unused_element
  _VegaEmbedOptions call(
      {String mode,
      String theme,
      dynamic defaultStyle,
      String renderer,
      LogLevel logLevel,
      dynamic tooltip,
      num width,
      num height,
      Padding padding,
      Actions actions,
      num scaleFactor,
      String editorUrl,
      String sourceHeader,
      String sourceFooter,
      I18N i18n,
      String downloadFileName,
      FormatLocale formatLocale,
      TimeFormatLocale timeFormatLocale}) {
    return _VegaEmbedOptions(
      mode: mode,
      theme: theme,
      defaultStyle: defaultStyle,
      renderer: renderer,
      logLevel: logLevel,
      tooltip: tooltip,
      width: width,
      height: height,
      padding: padding,
      actions: actions,
      scaleFactor: scaleFactor,
      editorUrl: editorUrl,
      sourceHeader: sourceHeader,
      sourceFooter: sourceFooter,
      i18n: i18n,
      downloadFileName: downloadFileName,
      formatLocale: formatLocale,
      timeFormatLocale: timeFormatLocale,
    );
  }
}

// ignore: unused_element
const $VegaEmbedOptions = _$VegaEmbedOptionsTearOff();

mixin _$VegaEmbedOptions {
  String get mode;
  String get theme;
  dynamic get defaultStyle;
  String get renderer;
  LogLevel get logLevel;
  dynamic get tooltip;
  num get width;
  num get height;
  Padding get padding;
  Actions get actions;
  num get scaleFactor;
  String get editorUrl;
  String get sourceHeader;
  String get sourceFooter;
  I18N get i18n;
  String get downloadFileName;
  FormatLocale get formatLocale;
  TimeFormatLocale get timeFormatLocale;

  Map<String, dynamic> toJson();
  $VegaEmbedOptionsCopyWith<VegaEmbedOptions> get copyWith;
}

abstract class $VegaEmbedOptionsCopyWith<$Res> {
  factory $VegaEmbedOptionsCopyWith(
          VegaEmbedOptions value, $Res Function(VegaEmbedOptions) then) =
      _$VegaEmbedOptionsCopyWithImpl<$Res>;
  $Res call(
      {String mode,
      String theme,
      dynamic defaultStyle,
      String renderer,
      LogLevel logLevel,
      dynamic tooltip,
      num width,
      num height,
      Padding padding,
      Actions actions,
      num scaleFactor,
      String editorUrl,
      String sourceHeader,
      String sourceFooter,
      I18N i18n,
      String downloadFileName,
      FormatLocale formatLocale,
      TimeFormatLocale timeFormatLocale});

  $PaddingCopyWith<$Res> get padding;
  $ActionsCopyWith<$Res> get actions;
  $I18NCopyWith<$Res> get i18n;
  $FormatLocaleCopyWith<$Res> get formatLocale;
  $TimeFormatLocaleCopyWith<$Res> get timeFormatLocale;
}

class _$VegaEmbedOptionsCopyWithImpl<$Res>
    implements $VegaEmbedOptionsCopyWith<$Res> {
  _$VegaEmbedOptionsCopyWithImpl(this._value, this._then);

  final VegaEmbedOptions _value;
  // ignore: unused_field
  final $Res Function(VegaEmbedOptions) _then;

  @override
  $Res call({
    Object mode = freezed,
    Object theme = freezed,
    Object defaultStyle = freezed,
    Object renderer = freezed,
    Object logLevel = freezed,
    Object tooltip = freezed,
    Object width = freezed,
    Object height = freezed,
    Object padding = freezed,
    Object actions = freezed,
    Object scaleFactor = freezed,
    Object editorUrl = freezed,
    Object sourceHeader = freezed,
    Object sourceFooter = freezed,
    Object i18n = freezed,
    Object downloadFileName = freezed,
    Object formatLocale = freezed,
    Object timeFormatLocale = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed ? _value.mode : mode as String,
      theme: theme == freezed ? _value.theme : theme as String,
      defaultStyle: defaultStyle == freezed
          ? _value.defaultStyle
          : defaultStyle as dynamic,
      renderer: renderer == freezed ? _value.renderer : renderer as String,
      logLevel: logLevel == freezed ? _value.logLevel : logLevel as LogLevel,
      tooltip: tooltip == freezed ? _value.tooltip : tooltip as dynamic,
      width: width == freezed ? _value.width : width as num,
      height: height == freezed ? _value.height : height as num,
      padding: padding == freezed ? _value.padding : padding as Padding,
      actions: actions == freezed ? _value.actions : actions as Actions,
      scaleFactor:
          scaleFactor == freezed ? _value.scaleFactor : scaleFactor as num,
      editorUrl: editorUrl == freezed ? _value.editorUrl : editorUrl as String,
      sourceHeader: sourceHeader == freezed
          ? _value.sourceHeader
          : sourceHeader as String,
      sourceFooter: sourceFooter == freezed
          ? _value.sourceFooter
          : sourceFooter as String,
      i18n: i18n == freezed ? _value.i18n : i18n as I18N,
      downloadFileName: downloadFileName == freezed
          ? _value.downloadFileName
          : downloadFileName as String,
      formatLocale: formatLocale == freezed
          ? _value.formatLocale
          : formatLocale as FormatLocale,
      timeFormatLocale: timeFormatLocale == freezed
          ? _value.timeFormatLocale
          : timeFormatLocale as TimeFormatLocale,
    ));
  }

  @override
  $PaddingCopyWith<$Res> get padding {
    if (_value.padding == null) {
      return null;
    }
    return $PaddingCopyWith<$Res>(_value.padding, (value) {
      return _then(_value.copyWith(padding: value));
    });
  }

  @override
  $ActionsCopyWith<$Res> get actions {
    if (_value.actions == null) {
      return null;
    }
    return $ActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value));
    });
  }

  @override
  $I18NCopyWith<$Res> get i18n {
    if (_value.i18n == null) {
      return null;
    }
    return $I18NCopyWith<$Res>(_value.i18n, (value) {
      return _then(_value.copyWith(i18n: value));
    });
  }

  @override
  $FormatLocaleCopyWith<$Res> get formatLocale {
    if (_value.formatLocale == null) {
      return null;
    }
    return $FormatLocaleCopyWith<$Res>(_value.formatLocale, (value) {
      return _then(_value.copyWith(formatLocale: value));
    });
  }

  @override
  $TimeFormatLocaleCopyWith<$Res> get timeFormatLocale {
    if (_value.timeFormatLocale == null) {
      return null;
    }
    return $TimeFormatLocaleCopyWith<$Res>(_value.timeFormatLocale, (value) {
      return _then(_value.copyWith(timeFormatLocale: value));
    });
  }
}

abstract class _$VegaEmbedOptionsCopyWith<$Res>
    implements $VegaEmbedOptionsCopyWith<$Res> {
  factory _$VegaEmbedOptionsCopyWith(
          _VegaEmbedOptions value, $Res Function(_VegaEmbedOptions) then) =
      __$VegaEmbedOptionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mode,
      String theme,
      dynamic defaultStyle,
      String renderer,
      LogLevel logLevel,
      dynamic tooltip,
      num width,
      num height,
      Padding padding,
      Actions actions,
      num scaleFactor,
      String editorUrl,
      String sourceHeader,
      String sourceFooter,
      I18N i18n,
      String downloadFileName,
      FormatLocale formatLocale,
      TimeFormatLocale timeFormatLocale});

  @override
  $PaddingCopyWith<$Res> get padding;
  @override
  $ActionsCopyWith<$Res> get actions;
  @override
  $I18NCopyWith<$Res> get i18n;
  @override
  $FormatLocaleCopyWith<$Res> get formatLocale;
  @override
  $TimeFormatLocaleCopyWith<$Res> get timeFormatLocale;
}

class __$VegaEmbedOptionsCopyWithImpl<$Res>
    extends _$VegaEmbedOptionsCopyWithImpl<$Res>
    implements _$VegaEmbedOptionsCopyWith<$Res> {
  __$VegaEmbedOptionsCopyWithImpl(
      _VegaEmbedOptions _value, $Res Function(_VegaEmbedOptions) _then)
      : super(_value, (v) => _then(v as _VegaEmbedOptions));

  @override
  _VegaEmbedOptions get _value => super._value as _VegaEmbedOptions;

  @override
  $Res call({
    Object mode = freezed,
    Object theme = freezed,
    Object defaultStyle = freezed,
    Object renderer = freezed,
    Object logLevel = freezed,
    Object tooltip = freezed,
    Object width = freezed,
    Object height = freezed,
    Object padding = freezed,
    Object actions = freezed,
    Object scaleFactor = freezed,
    Object editorUrl = freezed,
    Object sourceHeader = freezed,
    Object sourceFooter = freezed,
    Object i18n = freezed,
    Object downloadFileName = freezed,
    Object formatLocale = freezed,
    Object timeFormatLocale = freezed,
  }) {
    return _then(_VegaEmbedOptions(
      mode: mode == freezed ? _value.mode : mode as String,
      theme: theme == freezed ? _value.theme : theme as String,
      defaultStyle: defaultStyle == freezed
          ? _value.defaultStyle
          : defaultStyle as dynamic,
      renderer: renderer == freezed ? _value.renderer : renderer as String,
      logLevel: logLevel == freezed ? _value.logLevel : logLevel as LogLevel,
      tooltip: tooltip == freezed ? _value.tooltip : tooltip as dynamic,
      width: width == freezed ? _value.width : width as num,
      height: height == freezed ? _value.height : height as num,
      padding: padding == freezed ? _value.padding : padding as Padding,
      actions: actions == freezed ? _value.actions : actions as Actions,
      scaleFactor:
          scaleFactor == freezed ? _value.scaleFactor : scaleFactor as num,
      editorUrl: editorUrl == freezed ? _value.editorUrl : editorUrl as String,
      sourceHeader: sourceHeader == freezed
          ? _value.sourceHeader
          : sourceHeader as String,
      sourceFooter: sourceFooter == freezed
          ? _value.sourceFooter
          : sourceFooter as String,
      i18n: i18n == freezed ? _value.i18n : i18n as I18N,
      downloadFileName: downloadFileName == freezed
          ? _value.downloadFileName
          : downloadFileName as String,
      formatLocale: formatLocale == freezed
          ? _value.formatLocale
          : formatLocale as FormatLocale,
      timeFormatLocale: timeFormatLocale == freezed
          ? _value.timeFormatLocale
          : timeFormatLocale as TimeFormatLocale,
    ));
  }
}

@JsonSerializable()
class _$_VegaEmbedOptions
    with DiagnosticableTreeMixin
    implements _VegaEmbedOptions {
  _$_VegaEmbedOptions(
      {this.mode,
      this.theme,
      this.defaultStyle,
      this.renderer,
      this.logLevel,
      this.tooltip,
      this.width,
      this.height,
      this.padding,
      this.actions,
      this.scaleFactor,
      this.editorUrl,
      this.sourceHeader,
      this.sourceFooter,
      this.i18n,
      this.downloadFileName,
      this.formatLocale,
      this.timeFormatLocale});

  factory _$_VegaEmbedOptions.fromJson(Map<String, dynamic> json) =>
      _$_$_VegaEmbedOptionsFromJson(json);

  @override
  final String mode;
  @override
  final String theme;
  @override
  final dynamic defaultStyle;
  @override
  final String renderer;
  @override
  final LogLevel logLevel;
  @override
  final dynamic tooltip;
  @override
  final num width;
  @override
  final num height;
  @override
  final Padding padding;
  @override
  final Actions actions;
  @override
  final num scaleFactor;
  @override
  final String editorUrl;
  @override
  final String sourceHeader;
  @override
  final String sourceFooter;
  @override
  final I18N i18n;
  @override
  final String downloadFileName;
  @override
  final FormatLocale formatLocale;
  @override
  final TimeFormatLocale timeFormatLocale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VegaEmbedOptions(mode: $mode, theme: $theme, defaultStyle: $defaultStyle, renderer: $renderer, logLevel: $logLevel, tooltip: $tooltip, width: $width, height: $height, padding: $padding, actions: $actions, scaleFactor: $scaleFactor, editorUrl: $editorUrl, sourceHeader: $sourceHeader, sourceFooter: $sourceFooter, i18n: $i18n, downloadFileName: $downloadFileName, formatLocale: $formatLocale, timeFormatLocale: $timeFormatLocale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VegaEmbedOptions'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('theme', theme))
      ..add(DiagnosticsProperty('defaultStyle', defaultStyle))
      ..add(DiagnosticsProperty('renderer', renderer))
      ..add(DiagnosticsProperty('logLevel', logLevel))
      ..add(DiagnosticsProperty('tooltip', tooltip))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('padding', padding))
      ..add(DiagnosticsProperty('actions', actions))
      ..add(DiagnosticsProperty('scaleFactor', scaleFactor))
      ..add(DiagnosticsProperty('editorUrl', editorUrl))
      ..add(DiagnosticsProperty('sourceHeader', sourceHeader))
      ..add(DiagnosticsProperty('sourceFooter', sourceFooter))
      ..add(DiagnosticsProperty('i18n', i18n))
      ..add(DiagnosticsProperty('downloadFileName', downloadFileName))
      ..add(DiagnosticsProperty('formatLocale', formatLocale))
      ..add(DiagnosticsProperty('timeFormatLocale', timeFormatLocale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VegaEmbedOptions &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.defaultStyle, defaultStyle) ||
                const DeepCollectionEquality()
                    .equals(other.defaultStyle, defaultStyle)) &&
            (identical(other.renderer, renderer) ||
                const DeepCollectionEquality()
                    .equals(other.renderer, renderer)) &&
            (identical(other.logLevel, logLevel) ||
                const DeepCollectionEquality()
                    .equals(other.logLevel, logLevel)) &&
            (identical(other.tooltip, tooltip) ||
                const DeepCollectionEquality()
                    .equals(other.tooltip, tooltip)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.padding, padding) ||
                const DeepCollectionEquality()
                    .equals(other.padding, padding)) &&
            (identical(other.actions, actions) ||
                const DeepCollectionEquality()
                    .equals(other.actions, actions)) &&
            (identical(other.scaleFactor, scaleFactor) ||
                const DeepCollectionEquality()
                    .equals(other.scaleFactor, scaleFactor)) &&
            (identical(other.editorUrl, editorUrl) ||
                const DeepCollectionEquality()
                    .equals(other.editorUrl, editorUrl)) &&
            (identical(other.sourceHeader, sourceHeader) ||
                const DeepCollectionEquality()
                    .equals(other.sourceHeader, sourceHeader)) &&
            (identical(other.sourceFooter, sourceFooter) ||
                const DeepCollectionEquality()
                    .equals(other.sourceFooter, sourceFooter)) &&
            (identical(other.i18n, i18n) ||
                const DeepCollectionEquality().equals(other.i18n, i18n)) &&
            (identical(other.downloadFileName, downloadFileName) ||
                const DeepCollectionEquality()
                    .equals(other.downloadFileName, downloadFileName)) &&
            (identical(other.formatLocale, formatLocale) ||
                const DeepCollectionEquality()
                    .equals(other.formatLocale, formatLocale)) &&
            (identical(other.timeFormatLocale, timeFormatLocale) ||
                const DeepCollectionEquality()
                    .equals(other.timeFormatLocale, timeFormatLocale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(defaultStyle) ^
      const DeepCollectionEquality().hash(renderer) ^
      const DeepCollectionEquality().hash(logLevel) ^
      const DeepCollectionEquality().hash(tooltip) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(padding) ^
      const DeepCollectionEquality().hash(actions) ^
      const DeepCollectionEquality().hash(scaleFactor) ^
      const DeepCollectionEquality().hash(editorUrl) ^
      const DeepCollectionEquality().hash(sourceHeader) ^
      const DeepCollectionEquality().hash(sourceFooter) ^
      const DeepCollectionEquality().hash(i18n) ^
      const DeepCollectionEquality().hash(downloadFileName) ^
      const DeepCollectionEquality().hash(formatLocale) ^
      const DeepCollectionEquality().hash(timeFormatLocale);

  @override
  _$VegaEmbedOptionsCopyWith<_VegaEmbedOptions> get copyWith =>
      __$VegaEmbedOptionsCopyWithImpl<_VegaEmbedOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VegaEmbedOptionsToJson(this);
  }
}

abstract class _VegaEmbedOptions implements VegaEmbedOptions {
  factory _VegaEmbedOptions(
      {String mode,
      String theme,
      dynamic defaultStyle,
      String renderer,
      LogLevel logLevel,
      dynamic tooltip,
      num width,
      num height,
      Padding padding,
      Actions actions,
      num scaleFactor,
      String editorUrl,
      String sourceHeader,
      String sourceFooter,
      I18N i18n,
      String downloadFileName,
      FormatLocale formatLocale,
      TimeFormatLocale timeFormatLocale}) = _$_VegaEmbedOptions;

  factory _VegaEmbedOptions.fromJson(Map<String, dynamic> json) =
      _$_VegaEmbedOptions.fromJson;

  @override
  String get mode;
  @override
  String get theme;
  @override
  dynamic get defaultStyle;
  @override
  String get renderer;
  @override
  LogLevel get logLevel;
  @override
  dynamic get tooltip;
  @override
  num get width;
  @override
  num get height;
  @override
  Padding get padding;
  @override
  Actions get actions;
  @override
  num get scaleFactor;
  @override
  String get editorUrl;
  @override
  String get sourceHeader;
  @override
  String get sourceFooter;
  @override
  I18N get i18n;
  @override
  String get downloadFileName;
  @override
  FormatLocale get formatLocale;
  @override
  TimeFormatLocale get timeFormatLocale;
  @override
  _$VegaEmbedOptionsCopyWith<_VegaEmbedOptions> get copyWith;
}

I18N _$I18NFromJson(Map<String, dynamic> json) {
  return _I18N.fromJson(json);
}

class _$I18NTearOff {
  const _$I18NTearOff();

// ignore: unused_element
  _I18N call(
      {String COMPILED_ACTION,
      String EDITOR_ACTION,
      String PNG_ACTION,
      String SOURCE_ACTION,
      String SVG_ACTION}) {
    return _I18N(
      COMPILED_ACTION: COMPILED_ACTION,
      EDITOR_ACTION: EDITOR_ACTION,
      PNG_ACTION: PNG_ACTION,
      SOURCE_ACTION: SOURCE_ACTION,
      SVG_ACTION: SVG_ACTION,
    );
  }
}

// ignore: unused_element
const $I18N = _$I18NTearOff();

mixin _$I18N {
  String get COMPILED_ACTION;
  String get EDITOR_ACTION;
  String get PNG_ACTION;
  String get SOURCE_ACTION;
  String get SVG_ACTION;

  Map<String, dynamic> toJson();
  $I18NCopyWith<I18N> get copyWith;
}

abstract class $I18NCopyWith<$Res> {
  factory $I18NCopyWith(I18N value, $Res Function(I18N) then) =
      _$I18NCopyWithImpl<$Res>;
  $Res call(
      {String COMPILED_ACTION,
      String EDITOR_ACTION,
      String PNG_ACTION,
      String SOURCE_ACTION,
      String SVG_ACTION});
}

class _$I18NCopyWithImpl<$Res> implements $I18NCopyWith<$Res> {
  _$I18NCopyWithImpl(this._value, this._then);

  final I18N _value;
  // ignore: unused_field
  final $Res Function(I18N) _then;

  @override
  $Res call({
    Object COMPILED_ACTION = freezed,
    Object EDITOR_ACTION = freezed,
    Object PNG_ACTION = freezed,
    Object SOURCE_ACTION = freezed,
    Object SVG_ACTION = freezed,
  }) {
    return _then(_value.copyWith(
      COMPILED_ACTION: COMPILED_ACTION == freezed
          ? _value.COMPILED_ACTION
          : COMPILED_ACTION as String,
      EDITOR_ACTION: EDITOR_ACTION == freezed
          ? _value.EDITOR_ACTION
          : EDITOR_ACTION as String,
      PNG_ACTION:
          PNG_ACTION == freezed ? _value.PNG_ACTION : PNG_ACTION as String,
      SOURCE_ACTION: SOURCE_ACTION == freezed
          ? _value.SOURCE_ACTION
          : SOURCE_ACTION as String,
      SVG_ACTION:
          SVG_ACTION == freezed ? _value.SVG_ACTION : SVG_ACTION as String,
    ));
  }
}

abstract class _$I18NCopyWith<$Res> implements $I18NCopyWith<$Res> {
  factory _$I18NCopyWith(_I18N value, $Res Function(_I18N) then) =
      __$I18NCopyWithImpl<$Res>;
  @override
  $Res call(
      {String COMPILED_ACTION,
      String EDITOR_ACTION,
      String PNG_ACTION,
      String SOURCE_ACTION,
      String SVG_ACTION});
}

class __$I18NCopyWithImpl<$Res> extends _$I18NCopyWithImpl<$Res>
    implements _$I18NCopyWith<$Res> {
  __$I18NCopyWithImpl(_I18N _value, $Res Function(_I18N) _then)
      : super(_value, (v) => _then(v as _I18N));

  @override
  _I18N get _value => super._value as _I18N;

  @override
  $Res call({
    Object COMPILED_ACTION = freezed,
    Object EDITOR_ACTION = freezed,
    Object PNG_ACTION = freezed,
    Object SOURCE_ACTION = freezed,
    Object SVG_ACTION = freezed,
  }) {
    return _then(_I18N(
      COMPILED_ACTION: COMPILED_ACTION == freezed
          ? _value.COMPILED_ACTION
          : COMPILED_ACTION as String,
      EDITOR_ACTION: EDITOR_ACTION == freezed
          ? _value.EDITOR_ACTION
          : EDITOR_ACTION as String,
      PNG_ACTION:
          PNG_ACTION == freezed ? _value.PNG_ACTION : PNG_ACTION as String,
      SOURCE_ACTION: SOURCE_ACTION == freezed
          ? _value.SOURCE_ACTION
          : SOURCE_ACTION as String,
      SVG_ACTION:
          SVG_ACTION == freezed ? _value.SVG_ACTION : SVG_ACTION as String,
    ));
  }
}

@JsonSerializable()
class _$_I18N with DiagnosticableTreeMixin implements _I18N {
  _$_I18N(
      {this.COMPILED_ACTION,
      this.EDITOR_ACTION,
      this.PNG_ACTION,
      this.SOURCE_ACTION,
      this.SVG_ACTION});

  factory _$_I18N.fromJson(Map<String, dynamic> json) =>
      _$_$_I18NFromJson(json);

  @override
  final String COMPILED_ACTION;
  @override
  final String EDITOR_ACTION;
  @override
  final String PNG_ACTION;
  @override
  final String SOURCE_ACTION;
  @override
  final String SVG_ACTION;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'I18N(COMPILED_ACTION: $COMPILED_ACTION, EDITOR_ACTION: $EDITOR_ACTION, PNG_ACTION: $PNG_ACTION, SOURCE_ACTION: $SOURCE_ACTION, SVG_ACTION: $SVG_ACTION)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'I18N'))
      ..add(DiagnosticsProperty('COMPILED_ACTION', COMPILED_ACTION))
      ..add(DiagnosticsProperty('EDITOR_ACTION', EDITOR_ACTION))
      ..add(DiagnosticsProperty('PNG_ACTION', PNG_ACTION))
      ..add(DiagnosticsProperty('SOURCE_ACTION', SOURCE_ACTION))
      ..add(DiagnosticsProperty('SVG_ACTION', SVG_ACTION));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _I18N &&
            (identical(other.COMPILED_ACTION, COMPILED_ACTION) ||
                const DeepCollectionEquality()
                    .equals(other.COMPILED_ACTION, COMPILED_ACTION)) &&
            (identical(other.EDITOR_ACTION, EDITOR_ACTION) ||
                const DeepCollectionEquality()
                    .equals(other.EDITOR_ACTION, EDITOR_ACTION)) &&
            (identical(other.PNG_ACTION, PNG_ACTION) ||
                const DeepCollectionEquality()
                    .equals(other.PNG_ACTION, PNG_ACTION)) &&
            (identical(other.SOURCE_ACTION, SOURCE_ACTION) ||
                const DeepCollectionEquality()
                    .equals(other.SOURCE_ACTION, SOURCE_ACTION)) &&
            (identical(other.SVG_ACTION, SVG_ACTION) ||
                const DeepCollectionEquality()
                    .equals(other.SVG_ACTION, SVG_ACTION)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(COMPILED_ACTION) ^
      const DeepCollectionEquality().hash(EDITOR_ACTION) ^
      const DeepCollectionEquality().hash(PNG_ACTION) ^
      const DeepCollectionEquality().hash(SOURCE_ACTION) ^
      const DeepCollectionEquality().hash(SVG_ACTION);

  @override
  _$I18NCopyWith<_I18N> get copyWith =>
      __$I18NCopyWithImpl<_I18N>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_I18NToJson(this);
  }
}

abstract class _I18N implements I18N {
  factory _I18N(
      {String COMPILED_ACTION,
      String EDITOR_ACTION,
      String PNG_ACTION,
      String SOURCE_ACTION,
      String SVG_ACTION}) = _$_I18N;

  factory _I18N.fromJson(Map<String, dynamic> json) = _$_I18N.fromJson;

  @override
  String get COMPILED_ACTION;
  @override
  String get EDITOR_ACTION;
  @override
  String get PNG_ACTION;
  @override
  String get SOURCE_ACTION;
  @override
  String get SVG_ACTION;
  @override
  _$I18NCopyWith<_I18N> get copyWith;
}

Padding _$PaddingFromJson(Map<String, dynamic> json) {
  return _Padding.fromJson(json);
}

class _$PaddingTearOff {
  const _$PaddingTearOff();

// ignore: unused_element
  _Padding call({num left, num right, num top, num bottom}) {
    return _Padding(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
    );
  }
}

// ignore: unused_element
const $Padding = _$PaddingTearOff();

mixin _$Padding {
  num get left;
  num get right;
  num get top;
  num get bottom;

  Map<String, dynamic> toJson();
  $PaddingCopyWith<Padding> get copyWith;
}

abstract class $PaddingCopyWith<$Res> {
  factory $PaddingCopyWith(Padding value, $Res Function(Padding) then) =
      _$PaddingCopyWithImpl<$Res>;
  $Res call({num left, num right, num top, num bottom});
}

class _$PaddingCopyWithImpl<$Res> implements $PaddingCopyWith<$Res> {
  _$PaddingCopyWithImpl(this._value, this._then);

  final Padding _value;
  // ignore: unused_field
  final $Res Function(Padding) _then;

  @override
  $Res call({
    Object left = freezed,
    Object right = freezed,
    Object top = freezed,
    Object bottom = freezed,
  }) {
    return _then(_value.copyWith(
      left: left == freezed ? _value.left : left as num,
      right: right == freezed ? _value.right : right as num,
      top: top == freezed ? _value.top : top as num,
      bottom: bottom == freezed ? _value.bottom : bottom as num,
    ));
  }
}

abstract class _$PaddingCopyWith<$Res> implements $PaddingCopyWith<$Res> {
  factory _$PaddingCopyWith(_Padding value, $Res Function(_Padding) then) =
      __$PaddingCopyWithImpl<$Res>;
  @override
  $Res call({num left, num right, num top, num bottom});
}

class __$PaddingCopyWithImpl<$Res> extends _$PaddingCopyWithImpl<$Res>
    implements _$PaddingCopyWith<$Res> {
  __$PaddingCopyWithImpl(_Padding _value, $Res Function(_Padding) _then)
      : super(_value, (v) => _then(v as _Padding));

  @override
  _Padding get _value => super._value as _Padding;

  @override
  $Res call({
    Object left = freezed,
    Object right = freezed,
    Object top = freezed,
    Object bottom = freezed,
  }) {
    return _then(_Padding(
      left: left == freezed ? _value.left : left as num,
      right: right == freezed ? _value.right : right as num,
      top: top == freezed ? _value.top : top as num,
      bottom: bottom == freezed ? _value.bottom : bottom as num,
    ));
  }
}

@JsonSerializable()
class _$_Padding with DiagnosticableTreeMixin implements _Padding {
  _$_Padding({this.left, this.right, this.top, this.bottom});

  factory _$_Padding.fromJson(Map<String, dynamic> json) =>
      _$_$_PaddingFromJson(json);

  @override
  final num left;
  @override
  final num right;
  @override
  final num top;
  @override
  final num bottom;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Padding(left: $left, right: $right, top: $top, bottom: $bottom)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Padding'))
      ..add(DiagnosticsProperty('left', left))
      ..add(DiagnosticsProperty('right', right))
      ..add(DiagnosticsProperty('top', top))
      ..add(DiagnosticsProperty('bottom', bottom));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Padding &&
            (identical(other.left, left) ||
                const DeepCollectionEquality().equals(other.left, left)) &&
            (identical(other.right, right) ||
                const DeepCollectionEquality().equals(other.right, right)) &&
            (identical(other.top, top) ||
                const DeepCollectionEquality().equals(other.top, top)) &&
            (identical(other.bottom, bottom) ||
                const DeepCollectionEquality().equals(other.bottom, bottom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(left) ^
      const DeepCollectionEquality().hash(right) ^
      const DeepCollectionEquality().hash(top) ^
      const DeepCollectionEquality().hash(bottom);

  @override
  _$PaddingCopyWith<_Padding> get copyWith =>
      __$PaddingCopyWithImpl<_Padding>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaddingToJson(this);
  }
}

abstract class _Padding implements Padding {
  factory _Padding({num left, num right, num top, num bottom}) = _$_Padding;

  factory _Padding.fromJson(Map<String, dynamic> json) = _$_Padding.fromJson;

  @override
  num get left;
  @override
  num get right;
  @override
  num get top;
  @override
  num get bottom;
  @override
  _$PaddingCopyWith<_Padding> get copyWith;
}

Actions _$ActionsFromJson(Map<String, dynamic> json) {
  return _Actions.fromJson(json);
}

class _$ActionsTearOff {
  const _$ActionsTearOff();

// ignore: unused_element
  _Actions call(
      {bool editor = true,
      bool export = true,
      bool source = true,
      bool compiled = false}) {
    return _Actions(
      editor: editor,
      export: export,
      source: source,
      compiled: compiled,
    );
  }
}

// ignore: unused_element
const $Actions = _$ActionsTearOff();

mixin _$Actions {
  bool get editor;
  bool get export;
  bool get source;
  bool get compiled;

  Map<String, dynamic> toJson();
  $ActionsCopyWith<Actions> get copyWith;
}

abstract class $ActionsCopyWith<$Res> {
  factory $ActionsCopyWith(Actions value, $Res Function(Actions) then) =
      _$ActionsCopyWithImpl<$Res>;
  $Res call({bool editor, bool export, bool source, bool compiled});
}

class _$ActionsCopyWithImpl<$Res> implements $ActionsCopyWith<$Res> {
  _$ActionsCopyWithImpl(this._value, this._then);

  final Actions _value;
  // ignore: unused_field
  final $Res Function(Actions) _then;

  @override
  $Res call({
    Object editor = freezed,
    Object export = freezed,
    Object source = freezed,
    Object compiled = freezed,
  }) {
    return _then(_value.copyWith(
      editor: editor == freezed ? _value.editor : editor as bool,
      export: export == freezed ? _value.export : export as bool,
      source: source == freezed ? _value.source : source as bool,
      compiled: compiled == freezed ? _value.compiled : compiled as bool,
    ));
  }
}

abstract class _$ActionsCopyWith<$Res> implements $ActionsCopyWith<$Res> {
  factory _$ActionsCopyWith(_Actions value, $Res Function(_Actions) then) =
      __$ActionsCopyWithImpl<$Res>;
  @override
  $Res call({bool editor, bool export, bool source, bool compiled});
}

class __$ActionsCopyWithImpl<$Res> extends _$ActionsCopyWithImpl<$Res>
    implements _$ActionsCopyWith<$Res> {
  __$ActionsCopyWithImpl(_Actions _value, $Res Function(_Actions) _then)
      : super(_value, (v) => _then(v as _Actions));

  @override
  _Actions get _value => super._value as _Actions;

  @override
  $Res call({
    Object editor = freezed,
    Object export = freezed,
    Object source = freezed,
    Object compiled = freezed,
  }) {
    return _then(_Actions(
      editor: editor == freezed ? _value.editor : editor as bool,
      export: export == freezed ? _value.export : export as bool,
      source: source == freezed ? _value.source : source as bool,
      compiled: compiled == freezed ? _value.compiled : compiled as bool,
    ));
  }
}

@JsonSerializable()
class _$_Actions with DiagnosticableTreeMixin implements _Actions {
  _$_Actions(
      {this.editor = true,
      this.export = true,
      this.source = true,
      this.compiled = false})
      : assert(editor != null),
        assert(export != null),
        assert(source != null),
        assert(compiled != null);

  factory _$_Actions.fromJson(Map<String, dynamic> json) =>
      _$_$_ActionsFromJson(json);

  @JsonKey(defaultValue: true)
  @override
  final bool editor;
  @JsonKey(defaultValue: true)
  @override
  final bool export;
  @JsonKey(defaultValue: true)
  @override
  final bool source;
  @JsonKey(defaultValue: false)
  @override
  final bool compiled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Actions(editor: $editor, export: $export, source: $source, compiled: $compiled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Actions'))
      ..add(DiagnosticsProperty('editor', editor))
      ..add(DiagnosticsProperty('export', export))
      ..add(DiagnosticsProperty('source', source))
      ..add(DiagnosticsProperty('compiled', compiled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Actions &&
            (identical(other.editor, editor) ||
                const DeepCollectionEquality().equals(other.editor, editor)) &&
            (identical(other.export, export) ||
                const DeepCollectionEquality().equals(other.export, export)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.compiled, compiled) ||
                const DeepCollectionEquality()
                    .equals(other.compiled, compiled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(editor) ^
      const DeepCollectionEquality().hash(export) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(compiled);

  @override
  _$ActionsCopyWith<_Actions> get copyWith =>
      __$ActionsCopyWithImpl<_Actions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActionsToJson(this);
  }
}

abstract class _Actions implements Actions {
  factory _Actions({bool editor, bool export, bool source, bool compiled}) =
      _$_Actions;

  factory _Actions.fromJson(Map<String, dynamic> json) = _$_Actions.fromJson;

  @override
  bool get editor;
  @override
  bool get export;
  @override
  bool get source;
  @override
  bool get compiled;
  @override
  _$ActionsCopyWith<_Actions> get copyWith;
}

FormatLocale _$FormatLocaleFromJson(Map<String, dynamic> json) {
  return _FormLocale.fromJson(json);
}

class _$FormatLocaleTearOff {
  const _$FormatLocaleTearOff();

// ignore: unused_element
  _FormLocale call(
      {String decimal,
      String thousands,
      List<num> groupings,
      List<String> currency,
      List<String> numerals}) {
    return _FormLocale(
      decimal: decimal,
      thousands: thousands,
      groupings: groupings,
      currency: currency,
      numerals: numerals,
    );
  }
}

// ignore: unused_element
const $FormatLocale = _$FormatLocaleTearOff();

mixin _$FormatLocale {
  String get decimal;
  String get thousands;
  List<num> get groupings;
  List<String> get currency;
  List<String> get numerals;

  Map<String, dynamic> toJson();
  $FormatLocaleCopyWith<FormatLocale> get copyWith;
}

abstract class $FormatLocaleCopyWith<$Res> {
  factory $FormatLocaleCopyWith(
          FormatLocale value, $Res Function(FormatLocale) then) =
      _$FormatLocaleCopyWithImpl<$Res>;
  $Res call(
      {String decimal,
      String thousands,
      List<num> groupings,
      List<String> currency,
      List<String> numerals});
}

class _$FormatLocaleCopyWithImpl<$Res> implements $FormatLocaleCopyWith<$Res> {
  _$FormatLocaleCopyWithImpl(this._value, this._then);

  final FormatLocale _value;
  // ignore: unused_field
  final $Res Function(FormatLocale) _then;

  @override
  $Res call({
    Object decimal = freezed,
    Object thousands = freezed,
    Object groupings = freezed,
    Object currency = freezed,
    Object numerals = freezed,
  }) {
    return _then(_value.copyWith(
      decimal: decimal == freezed ? _value.decimal : decimal as String,
      thousands: thousands == freezed ? _value.thousands : thousands as String,
      groupings:
          groupings == freezed ? _value.groupings : groupings as List<num>,
      currency:
          currency == freezed ? _value.currency : currency as List<String>,
      numerals:
          numerals == freezed ? _value.numerals : numerals as List<String>,
    ));
  }
}

abstract class _$FormLocaleCopyWith<$Res>
    implements $FormatLocaleCopyWith<$Res> {
  factory _$FormLocaleCopyWith(
          _FormLocale value, $Res Function(_FormLocale) then) =
      __$FormLocaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String decimal,
      String thousands,
      List<num> groupings,
      List<String> currency,
      List<String> numerals});
}

class __$FormLocaleCopyWithImpl<$Res> extends _$FormatLocaleCopyWithImpl<$Res>
    implements _$FormLocaleCopyWith<$Res> {
  __$FormLocaleCopyWithImpl(
      _FormLocale _value, $Res Function(_FormLocale) _then)
      : super(_value, (v) => _then(v as _FormLocale));

  @override
  _FormLocale get _value => super._value as _FormLocale;

  @override
  $Res call({
    Object decimal = freezed,
    Object thousands = freezed,
    Object groupings = freezed,
    Object currency = freezed,
    Object numerals = freezed,
  }) {
    return _then(_FormLocale(
      decimal: decimal == freezed ? _value.decimal : decimal as String,
      thousands: thousands == freezed ? _value.thousands : thousands as String,
      groupings:
          groupings == freezed ? _value.groupings : groupings as List<num>,
      currency:
          currency == freezed ? _value.currency : currency as List<String>,
      numerals:
          numerals == freezed ? _value.numerals : numerals as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_FormLocale with DiagnosticableTreeMixin implements _FormLocale {
  _$_FormLocale(
      {this.decimal,
      this.thousands,
      this.groupings,
      this.currency,
      this.numerals});

  factory _$_FormLocale.fromJson(Map<String, dynamic> json) =>
      _$_$_FormLocaleFromJson(json);

  @override
  final String decimal;
  @override
  final String thousands;
  @override
  final List<num> groupings;
  @override
  final List<String> currency;
  @override
  final List<String> numerals;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormatLocale(decimal: $decimal, thousands: $thousands, groupings: $groupings, currency: $currency, numerals: $numerals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FormatLocale'))
      ..add(DiagnosticsProperty('decimal', decimal))
      ..add(DiagnosticsProperty('thousands', thousands))
      ..add(DiagnosticsProperty('groupings', groupings))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('numerals', numerals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormLocale &&
            (identical(other.decimal, decimal) ||
                const DeepCollectionEquality()
                    .equals(other.decimal, decimal)) &&
            (identical(other.thousands, thousands) ||
                const DeepCollectionEquality()
                    .equals(other.thousands, thousands)) &&
            (identical(other.groupings, groupings) ||
                const DeepCollectionEquality()
                    .equals(other.groupings, groupings)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.numerals, numerals) ||
                const DeepCollectionEquality()
                    .equals(other.numerals, numerals)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(decimal) ^
      const DeepCollectionEquality().hash(thousands) ^
      const DeepCollectionEquality().hash(groupings) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(numerals);

  @override
  _$FormLocaleCopyWith<_FormLocale> get copyWith =>
      __$FormLocaleCopyWithImpl<_FormLocale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FormLocaleToJson(this);
  }
}

abstract class _FormLocale implements FormatLocale {
  factory _FormLocale(
      {String decimal,
      String thousands,
      List<num> groupings,
      List<String> currency,
      List<String> numerals}) = _$_FormLocale;

  factory _FormLocale.fromJson(Map<String, dynamic> json) =
      _$_FormLocale.fromJson;

  @override
  String get decimal;
  @override
  String get thousands;
  @override
  List<num> get groupings;
  @override
  List<String> get currency;
  @override
  List<String> get numerals;
  @override
  _$FormLocaleCopyWith<_FormLocale> get copyWith;
}

TimeFormatLocale _$TimeFormatLocaleFromJson(Map<String, dynamic> json) {
  return _TimeFormatLocale.fromJson(json);
}

class _$TimeFormatLocaleTearOff {
  const _$TimeFormatLocaleTearOff();

// ignore: unused_element
  _TimeFormatLocale call(
      {String dateTime,
      String date,
      String time,
      List<String> periods,
      List<String> days,
      List<String> shortDays,
      List<String> months,
      List<String> shortMonths}) {
    return _TimeFormatLocale(
      dateTime: dateTime,
      date: date,
      time: time,
      periods: periods,
      days: days,
      shortDays: shortDays,
      months: months,
      shortMonths: shortMonths,
    );
  }
}

// ignore: unused_element
const $TimeFormatLocale = _$TimeFormatLocaleTearOff();

mixin _$TimeFormatLocale {
  String get dateTime;
  String get date;
  String get time;
  List<String> get periods;
  List<String> get days;
  List<String> get shortDays;
  List<String> get months;
  List<String> get shortMonths;

  Map<String, dynamic> toJson();
  $TimeFormatLocaleCopyWith<TimeFormatLocale> get copyWith;
}

abstract class $TimeFormatLocaleCopyWith<$Res> {
  factory $TimeFormatLocaleCopyWith(
          TimeFormatLocale value, $Res Function(TimeFormatLocale) then) =
      _$TimeFormatLocaleCopyWithImpl<$Res>;
  $Res call(
      {String dateTime,
      String date,
      String time,
      List<String> periods,
      List<String> days,
      List<String> shortDays,
      List<String> months,
      List<String> shortMonths});
}

class _$TimeFormatLocaleCopyWithImpl<$Res>
    implements $TimeFormatLocaleCopyWith<$Res> {
  _$TimeFormatLocaleCopyWithImpl(this._value, this._then);

  final TimeFormatLocale _value;
  // ignore: unused_field
  final $Res Function(TimeFormatLocale) _then;

  @override
  $Res call({
    Object dateTime = freezed,
    Object date = freezed,
    Object time = freezed,
    Object periods = freezed,
    Object days = freezed,
    Object shortDays = freezed,
    Object months = freezed,
    Object shortMonths = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as String,
      date: date == freezed ? _value.date : date as String,
      time: time == freezed ? _value.time : time as String,
      periods: periods == freezed ? _value.periods : periods as List<String>,
      days: days == freezed ? _value.days : days as List<String>,
      shortDays:
          shortDays == freezed ? _value.shortDays : shortDays as List<String>,
      months: months == freezed ? _value.months : months as List<String>,
      shortMonths: shortMonths == freezed
          ? _value.shortMonths
          : shortMonths as List<String>,
    ));
  }
}

abstract class _$TimeFormatLocaleCopyWith<$Res>
    implements $TimeFormatLocaleCopyWith<$Res> {
  factory _$TimeFormatLocaleCopyWith(
          _TimeFormatLocale value, $Res Function(_TimeFormatLocale) then) =
      __$TimeFormatLocaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dateTime,
      String date,
      String time,
      List<String> periods,
      List<String> days,
      List<String> shortDays,
      List<String> months,
      List<String> shortMonths});
}

class __$TimeFormatLocaleCopyWithImpl<$Res>
    extends _$TimeFormatLocaleCopyWithImpl<$Res>
    implements _$TimeFormatLocaleCopyWith<$Res> {
  __$TimeFormatLocaleCopyWithImpl(
      _TimeFormatLocale _value, $Res Function(_TimeFormatLocale) _then)
      : super(_value, (v) => _then(v as _TimeFormatLocale));

  @override
  _TimeFormatLocale get _value => super._value as _TimeFormatLocale;

  @override
  $Res call({
    Object dateTime = freezed,
    Object date = freezed,
    Object time = freezed,
    Object periods = freezed,
    Object days = freezed,
    Object shortDays = freezed,
    Object months = freezed,
    Object shortMonths = freezed,
  }) {
    return _then(_TimeFormatLocale(
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as String,
      date: date == freezed ? _value.date : date as String,
      time: time == freezed ? _value.time : time as String,
      periods: periods == freezed ? _value.periods : periods as List<String>,
      days: days == freezed ? _value.days : days as List<String>,
      shortDays:
          shortDays == freezed ? _value.shortDays : shortDays as List<String>,
      months: months == freezed ? _value.months : months as List<String>,
      shortMonths: shortMonths == freezed
          ? _value.shortMonths
          : shortMonths as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_TimeFormatLocale
    with DiagnosticableTreeMixin
    implements _TimeFormatLocale {
  _$_TimeFormatLocale(
      {this.dateTime,
      this.date,
      this.time,
      this.periods,
      this.days,
      this.shortDays,
      this.months,
      this.shortMonths});

  factory _$_TimeFormatLocale.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeFormatLocaleFromJson(json);

  @override
  final String dateTime;
  @override
  final String date;
  @override
  final String time;
  @override
  final List<String> periods;
  @override
  final List<String> days;
  @override
  final List<String> shortDays;
  @override
  final List<String> months;
  @override
  final List<String> shortMonths;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeFormatLocale(dateTime: $dateTime, date: $date, time: $time, periods: $periods, days: $days, shortDays: $shortDays, months: $months, shortMonths: $shortMonths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeFormatLocale'))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('periods', periods))
      ..add(DiagnosticsProperty('days', days))
      ..add(DiagnosticsProperty('shortDays', shortDays))
      ..add(DiagnosticsProperty('months', months))
      ..add(DiagnosticsProperty('shortMonths', shortMonths));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeFormatLocale &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.periods, periods) ||
                const DeepCollectionEquality()
                    .equals(other.periods, periods)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)) &&
            (identical(other.shortDays, shortDays) ||
                const DeepCollectionEquality()
                    .equals(other.shortDays, shortDays)) &&
            (identical(other.months, months) ||
                const DeepCollectionEquality().equals(other.months, months)) &&
            (identical(other.shortMonths, shortMonths) ||
                const DeepCollectionEquality()
                    .equals(other.shortMonths, shortMonths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(periods) ^
      const DeepCollectionEquality().hash(days) ^
      const DeepCollectionEquality().hash(shortDays) ^
      const DeepCollectionEquality().hash(months) ^
      const DeepCollectionEquality().hash(shortMonths);

  @override
  _$TimeFormatLocaleCopyWith<_TimeFormatLocale> get copyWith =>
      __$TimeFormatLocaleCopyWithImpl<_TimeFormatLocale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimeFormatLocaleToJson(this);
  }
}

abstract class _TimeFormatLocale implements TimeFormatLocale {
  factory _TimeFormatLocale(
      {String dateTime,
      String date,
      String time,
      List<String> periods,
      List<String> days,
      List<String> shortDays,
      List<String> months,
      List<String> shortMonths}) = _$_TimeFormatLocale;

  factory _TimeFormatLocale.fromJson(Map<String, dynamic> json) =
      _$_TimeFormatLocale.fromJson;

  @override
  String get dateTime;
  @override
  String get date;
  @override
  String get time;
  @override
  List<String> get periods;
  @override
  List<String> get days;
  @override
  List<String> get shortDays;
  @override
  List<String> get months;
  @override
  List<String> get shortMonths;
  @override
  _$TimeFormatLocaleCopyWith<_TimeFormatLocale> get copyWith;
}
