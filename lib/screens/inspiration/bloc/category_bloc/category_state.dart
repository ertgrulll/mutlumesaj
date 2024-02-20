part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;

  const factory CategoryState.loaded(
    List<Tag> tags,
    List<Tag> selectedTags,
  ) = _Loaded;

  const factory CategoryState.error(String message) = _Error;
}
