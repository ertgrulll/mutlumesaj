import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes.freezed.dart';
part 'quotes.g.dart';

@freezed
class Quotes with _$Quotes {
  const factory Quotes({
    int? count,
    int? totalCount,
    int? page,
    int? totalPages,
    int? lastItemIndex,
    List<Result>? results,
  }) = _Quotes;

  factory Quotes.fromJson(Map<String, dynamic> json) => _$QuotesFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? id,
    String? author,
    String? content,
    List<String>? tags,
    String? authorSlug,
    int? length,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
