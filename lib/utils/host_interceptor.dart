import 'package:dio/dio.dart';

/// Adds base url to the requests.
class HostInterceptor extends Interceptor {
  @override
  void onRequest(options, handler) async {
    options.baseUrl = "https://api.quotable.io";

    handler.next(options);
  }
}
