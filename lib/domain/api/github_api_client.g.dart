// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GitHubApiClient implements GitHubApiClient {
  _GitHubApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.github.com';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<RepositoryListResponse> searchRepositories({query}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': query};
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/search/repositories',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RepositoryListResponse.fromJson(_result.data);
    return value;
  }
}
