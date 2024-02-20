import 'package:mutlumesaj/screens/inspiration/data/data_source/inspiration_data_source.dart';
import 'package:mutlumesaj/screens/inspiration/model/quotes/quotes.dart';
import 'package:mutlumesaj/screens/inspiration/model/tag/tag.dart';

/// [InspirationRepository] is an abstract class that is defining the method
/// signatures.
abstract class InspirationRepository {
  factory InspirationRepository({required InspirationsDataSource dataSoruce}) =
      _InspirationRepoImpl;

  Future<List<Tag>> getTags();

  Future<Quotes> getQuotes({
    required int page,
    required List<String> tags,
  });
}

/// The implementation of the [InspirationRepository] repository is responsible for
/// getting inspirations from the data source and modelling it.
class _InspirationRepoImpl implements InspirationRepository {
  _InspirationRepoImpl({required this.dataSoruce});

  final InspirationsDataSource dataSoruce;
  List<dynamic>? _tags;

  @override
  Future<List<Tag>> getTags() async {
    _tags ??= await dataSoruce.fetchTags();

    return _tags!.map((tag) => Tag.fromJson(tag)).toList();
  }

  @override
  Future<Quotes> getQuotes({
    required int page,
    required List<String> tags,
  }) async {
    final result = await dataSoruce.fetchQuotes(
      page: page,
      tags: tags,
    );

    return Quotes.fromJson(result);
  }
}
