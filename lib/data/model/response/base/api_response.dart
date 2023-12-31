import 'package:dio/dio.dart';

class ApiResponse {
  final Response response;
  final dynamic error;

  ApiResponse(this.response, this.error);

  ApiResponse.withError(dynamic errorValue)
      : response = Response(requestOptions: RequestOptions()),
        error = errorValue;

  ApiResponse.withSuccess(Response responseValue)
      : response = responseValue,
        error = null;
}
