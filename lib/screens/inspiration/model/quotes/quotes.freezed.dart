// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quotes _$QuotesFromJson(Map<String, dynamic> json) {
  return _Quotes.fromJson(json);
}

/// @nodoc
mixin _$Quotes {
  int? get count => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get lastItemIndex => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotesCopyWith<Quotes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesCopyWith<$Res> {
  factory $QuotesCopyWith(Quotes value, $Res Function(Quotes) then) =
      _$QuotesCopyWithImpl<$Res, Quotes>;
  @useResult
  $Res call(
      {int? count,
      int? totalCount,
      int? page,
      int? totalPages,
      int? lastItemIndex,
      List<Result>? results});
}

/// @nodoc
class _$QuotesCopyWithImpl<$Res, $Val extends Quotes>
    implements $QuotesCopyWith<$Res> {
  _$QuotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? totalCount = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? lastItemIndex = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      lastItemIndex: freezed == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotesImplCopyWith<$Res> implements $QuotesCopyWith<$Res> {
  factory _$$QuotesImplCopyWith(
          _$QuotesImpl value, $Res Function(_$QuotesImpl) then) =
      __$$QuotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      int? totalCount,
      int? page,
      int? totalPages,
      int? lastItemIndex,
      List<Result>? results});
}

/// @nodoc
class __$$QuotesImplCopyWithImpl<$Res>
    extends _$QuotesCopyWithImpl<$Res, _$QuotesImpl>
    implements _$$QuotesImplCopyWith<$Res> {
  __$$QuotesImplCopyWithImpl(
      _$QuotesImpl _value, $Res Function(_$QuotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? totalCount = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? lastItemIndex = freezed,
    Object? results = freezed,
  }) {
    return _then(_$QuotesImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      lastItemIndex: freezed == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotesImpl implements _Quotes {
  const _$QuotesImpl(
      {this.count,
      this.totalCount,
      this.page,
      this.totalPages,
      this.lastItemIndex,
      final List<Result>? results})
      : _results = results;

  factory _$QuotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotesImplFromJson(json);

  @override
  final int? count;
  @override
  final int? totalCount;
  @override
  final int? page;
  @override
  final int? totalPages;
  @override
  final int? lastItemIndex;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Quotes(count: $count, totalCount: $totalCount, page: $page, totalPages: $totalPages, lastItemIndex: $lastItemIndex, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotesImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.lastItemIndex, lastItemIndex) ||
                other.lastItemIndex == lastItemIndex) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, totalCount, page,
      totalPages, lastItemIndex, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotesImplCopyWith<_$QuotesImpl> get copyWith =>
      __$$QuotesImplCopyWithImpl<_$QuotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotesImplToJson(
      this,
    );
  }
}

abstract class _Quotes implements Quotes {
  const factory _Quotes(
      {final int? count,
      final int? totalCount,
      final int? page,
      final int? totalPages,
      final int? lastItemIndex,
      final List<Result>? results}) = _$QuotesImpl;

  factory _Quotes.fromJson(Map<String, dynamic> json) = _$QuotesImpl.fromJson;

  @override
  int? get count;
  @override
  int? get totalCount;
  @override
  int? get page;
  @override
  int? get totalPages;
  @override
  int? get lastItemIndex;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$QuotesImplCopyWith<_$QuotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get id => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get authorSlug => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? id,
      String? author,
      String? content,
      List<String>? tags,
      String? authorSlug,
      int? length});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? author,
      String? content,
      List<String>? tags,
      String? authorSlug,
      int? length});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.author,
      this.content,
      final List<String>? tags,
      this.authorSlug,
      this.length})
      : _tags = tags;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? id;
  @override
  final String? author;
  @override
  final String? content;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? authorSlug;
  @override
  final int? length;

  @override
  String toString() {
    return 'Result(id: $id, author: $author, content: $content, tags: $tags, authorSlug: $authorSlug, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.authorSlug, authorSlug) ||
                other.authorSlug == authorSlug) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, author, content,
      const DeepCollectionEquality().hash(_tags), authorSlug, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? id,
      final String? author,
      final String? content,
      final List<String>? tags,
      final String? authorSlug,
      final int? length}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get id;
  @override
  String? get author;
  @override
  String? get content;
  @override
  List<String>? get tags;
  @override
  String? get authorSlug;
  @override
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
