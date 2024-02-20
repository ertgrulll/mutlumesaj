import 'package:dio/dio.dart';
import 'package:mutlumesaj/utils/host_interceptor.dart';

class InspirationsDataSource {
  InspirationsDataSource();

  final _dio = Dio()..interceptors.add(HostInterceptor());

  Future<List<dynamic>> fetchTags() async {
    final response = await _dio.get("/tags");

    return response.data;
  }

  Future<Map<String, dynamic>> fetchQuotes({
    required int page,
    required List<String> tags,
  }) async {
    final response = await _dio.get(
      "/quotes",
      queryParameters: {
        "page": page,
        if (tags.isNotEmpty) "tags": tags.join("|"),
      },
    );

    return response.data;
  }
}
