// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) setBackgroundImage,
    required TResult Function(Color color) setColor,
    required TResult Function(String fontFamily) setFontFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? setBackgroundImage,
    TResult? Function(Color color)? setColor,
    TResult? Function(String fontFamily)? setFontFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? setBackgroundImage,
    TResult Function(Color color)? setColor,
    TResult Function(String fontFamily)? setFontFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBackgroundImage value) setBackgroundImage,
    required TResult Function(_SetColor value) setColor,
    required TResult Function(_SetFontFamily value) setFontFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult? Function(_SetColor value)? setColor,
    TResult? Function(_SetFontFamily value)? setFontFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult Function(_SetColor value)? setColor,
    TResult Function(_SetFontFamily value)? setFontFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizationEventCopyWith<$Res> {
  factory $CustomizationEventCopyWith(
          CustomizationEvent value, $Res Function(CustomizationEvent) then) =
      _$CustomizationEventCopyWithImpl<$Res, CustomizationEvent>;
}

/// @nodoc
class _$CustomizationEventCopyWithImpl<$Res, $Val extends CustomizationEvent>
    implements $CustomizationEventCopyWith<$Res> {
  _$CustomizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetBackgroundImageImplCopyWith<$Res> {
  factory _$$SetBackgroundImageImplCopyWith(_$SetBackgroundImageImpl value,
          $Res Function(_$SetBackgroundImageImpl) then) =
      __$$SetBackgroundImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String asset});
}

/// @nodoc
class __$$SetBackgroundImageImplCopyWithImpl<$Res>
    extends _$CustomizationEventCopyWithImpl<$Res, _$SetBackgroundImageImpl>
    implements _$$SetBackgroundImageImplCopyWith<$Res> {
  __$$SetBackgroundImageImplCopyWithImpl(_$SetBackgroundImageImpl _value,
      $Res Function(_$SetBackgroundImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
  }) {
    return _then(_$SetBackgroundImageImpl(
      null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetBackgroundImageImpl implements _SetBackgroundImage {
  const _$SetBackgroundImageImpl(this.asset);

  @override
  final String asset;

  @override
  String toString() {
    return 'CustomizationEvent.setBackgroundImage(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBackgroundImageImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBackgroundImageImplCopyWith<_$SetBackgroundImageImpl> get copyWith =>
      __$$SetBackgroundImageImplCopyWithImpl<_$SetBackgroundImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) setBackgroundImage,
    required TResult Function(Color color) setColor,
    required TResult Function(String fontFamily) setFontFamily,
  }) {
    return setBackgroundImage(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? setBackgroundImage,
    TResult? Function(Color color)? setColor,
    TResult? Function(String fontFamily)? setFontFamily,
  }) {
    return setBackgroundImage?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? setBackgroundImage,
    TResult Function(Color color)? setColor,
    TResult Function(String fontFamily)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setBackgroundImage != null) {
      return setBackgroundImage(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBackgroundImage value) setBackgroundImage,
    required TResult Function(_SetColor value) setColor,
    required TResult Function(_SetFontFamily value) setFontFamily,
  }) {
    return setBackgroundImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult? Function(_SetColor value)? setColor,
    TResult? Function(_SetFontFamily value)? setFontFamily,
  }) {
    return setBackgroundImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult Function(_SetColor value)? setColor,
    TResult Function(_SetFontFamily value)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setBackgroundImage != null) {
      return setBackgroundImage(this);
    }
    return orElse();
  }
}

abstract class _SetBackgroundImage implements CustomizationEvent {
  const factory _SetBackgroundImage(final String asset) =
      _$SetBackgroundImageImpl;

  String get asset;
  @JsonKey(ignore: true)
  _$$SetBackgroundImageImplCopyWith<_$SetBackgroundImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetColorImplCopyWith<$Res> {
  factory _$$SetColorImplCopyWith(
          _$SetColorImpl value, $Res Function(_$SetColorImpl) then) =
      __$$SetColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$SetColorImplCopyWithImpl<$Res>
    extends _$CustomizationEventCopyWithImpl<$Res, _$SetColorImpl>
    implements _$$SetColorImplCopyWith<$Res> {
  __$$SetColorImplCopyWithImpl(
      _$SetColorImpl _value, $Res Function(_$SetColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$SetColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$SetColorImpl implements _SetColor {
  const _$SetColorImpl(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'CustomizationEvent.setColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetColorImplCopyWith<_$SetColorImpl> get copyWith =>
      __$$SetColorImplCopyWithImpl<_$SetColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) setBackgroundImage,
    required TResult Function(Color color) setColor,
    required TResult Function(String fontFamily) setFontFamily,
  }) {
    return setColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? setBackgroundImage,
    TResult? Function(Color color)? setColor,
    TResult? Function(String fontFamily)? setFontFamily,
  }) {
    return setColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? setBackgroundImage,
    TResult Function(Color color)? setColor,
    TResult Function(String fontFamily)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setColor != null) {
      return setColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBackgroundImage value) setBackgroundImage,
    required TResult Function(_SetColor value) setColor,
    required TResult Function(_SetFontFamily value) setFontFamily,
  }) {
    return setColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult? Function(_SetColor value)? setColor,
    TResult? Function(_SetFontFamily value)? setFontFamily,
  }) {
    return setColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult Function(_SetColor value)? setColor,
    TResult Function(_SetFontFamily value)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setColor != null) {
      return setColor(this);
    }
    return orElse();
  }
}

abstract class _SetColor implements CustomizationEvent {
  const factory _SetColor(final Color color) = _$SetColorImpl;

  Color get color;
  @JsonKey(ignore: true)
  _$$SetColorImplCopyWith<_$SetColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetFontFamilyImplCopyWith<$Res> {
  factory _$$SetFontFamilyImplCopyWith(
          _$SetFontFamilyImpl value, $Res Function(_$SetFontFamilyImpl) then) =
      __$$SetFontFamilyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fontFamily});
}

/// @nodoc
class __$$SetFontFamilyImplCopyWithImpl<$Res>
    extends _$CustomizationEventCopyWithImpl<$Res, _$SetFontFamilyImpl>
    implements _$$SetFontFamilyImplCopyWith<$Res> {
  __$$SetFontFamilyImplCopyWithImpl(
      _$SetFontFamilyImpl _value, $Res Function(_$SetFontFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = null,
  }) {
    return _then(_$SetFontFamilyImpl(
      null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetFontFamilyImpl implements _SetFontFamily {
  const _$SetFontFamilyImpl(this.fontFamily);

  @override
  final String fontFamily;

  @override
  String toString() {
    return 'CustomizationEvent.setFontFamily(fontFamily: $fontFamily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFontFamilyImpl &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fontFamily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFontFamilyImplCopyWith<_$SetFontFamilyImpl> get copyWith =>
      __$$SetFontFamilyImplCopyWithImpl<_$SetFontFamilyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) setBackgroundImage,
    required TResult Function(Color color) setColor,
    required TResult Function(String fontFamily) setFontFamily,
  }) {
    return setFontFamily(fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? setBackgroundImage,
    TResult? Function(Color color)? setColor,
    TResult? Function(String fontFamily)? setFontFamily,
  }) {
    return setFontFamily?.call(fontFamily);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? setBackgroundImage,
    TResult Function(Color color)? setColor,
    TResult Function(String fontFamily)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setFontFamily != null) {
      return setFontFamily(fontFamily);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetBackgroundImage value) setBackgroundImage,
    required TResult Function(_SetColor value) setColor,
    required TResult Function(_SetFontFamily value) setFontFamily,
  }) {
    return setFontFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult? Function(_SetColor value)? setColor,
    TResult? Function(_SetFontFamily value)? setFontFamily,
  }) {
    return setFontFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetBackgroundImage value)? setBackgroundImage,
    TResult Function(_SetColor value)? setColor,
    TResult Function(_SetFontFamily value)? setFontFamily,
    required TResult orElse(),
  }) {
    if (setFontFamily != null) {
      return setFontFamily(this);
    }
    return orElse();
  }
}

abstract class _SetFontFamily implements CustomizationEvent {
  const factory _SetFontFamily(final String fontFamily) = _$SetFontFamilyImpl;

  String get fontFamily;
  @JsonKey(ignore: true)
  _$$SetFontFamilyImplCopyWith<_$SetFontFamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomizationState {
  String get fontFamily => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fontFamily, String? background, Color? color)
        set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fontFamily, String? background, Color? color)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fontFamily, String? background, Color? color)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Set value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Set value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Set value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomizationStateCopyWith<CustomizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizationStateCopyWith<$Res> {
  factory $CustomizationStateCopyWith(
          CustomizationState value, $Res Function(CustomizationState) then) =
      _$CustomizationStateCopyWithImpl<$Res, CustomizationState>;
  @useResult
  $Res call({String fontFamily, String? background, Color? color});
}

/// @nodoc
class _$CustomizationStateCopyWithImpl<$Res, $Val extends CustomizationState>
    implements $CustomizationStateCopyWith<$Res> {
  _$CustomizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = null,
    Object? background = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res>
    implements $CustomizationStateCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fontFamily, String? background, Color? color});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res>
    extends _$CustomizationStateCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = null,
    Object? background = freezed,
    Object? color = freezed,
  }) {
    return _then(_$SetImpl(
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$SetImpl implements _Set {
  const _$SetImpl({required this.fontFamily, this.background, this.color});

  @override
  final String fontFamily;
  @override
  final String? background;
  @override
  final Color? color;

  @override
  String toString() {
    return 'CustomizationState.set(fontFamily: $fontFamily, background: $background, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fontFamily, background, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fontFamily, String? background, Color? color)
        set,
  }) {
    return set(fontFamily, background, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fontFamily, String? background, Color? color)? set,
  }) {
    return set?.call(fontFamily, background, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fontFamily, String? background, Color? color)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(fontFamily, background, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Set value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Set value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Set value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class _Set implements CustomizationState {
  const factory _Set(
      {required final String fontFamily,
      final String? background,
      final Color? color}) = _$SetImpl;

  @override
  String get fontFamily;
  @override
  String? get background;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
