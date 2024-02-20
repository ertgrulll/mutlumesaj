part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.fetch() = _Fetch;

  const factory CategoryEvent.select({
    required Tag tag,
  }) = _Select;
}
