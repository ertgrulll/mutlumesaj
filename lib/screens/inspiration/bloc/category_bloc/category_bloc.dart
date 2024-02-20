import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutlumesaj/screens/inspiration/data/repository/inspiration_repository.dart';
import 'package:mutlumesaj/screens/inspiration/model/tag/tag.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.repository,
  }) : super(const _Loading()) {
    on<_Fetch>((event, emit) async {
      final selected =
          state is _Loaded ? (state as _Loaded).selectedTags : <Tag>[];
      emit(const CategoryState.loading());

      try {
        final tags = await repository.getTags();
        tags.removeWhere((tag) => tag.quoteCount == 0);

        emit(CategoryState.loaded(tags, selected));
      } catch (e) {
        emit(CategoryState.error(e.toString()));
      }
    });

    on<_Select>((event, emit) {
      final tag = event.tag;

      if (state is _Loaded) {
        final selectedTags = List<Tag>.from((state as _Loaded).selectedTags);

        if (selectedTags.any((t) => t.slug == tag.slug)) {
          selectedTags.remove(tag);
        } else {
          selectedTags.add(tag);
        }

        emit(CategoryState.loaded((state as _Loaded).tags, selectedTags));
      }
    });
  }

  final InspirationRepository repository;
}
