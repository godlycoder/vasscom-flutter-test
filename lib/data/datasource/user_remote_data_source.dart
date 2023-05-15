import 'package:dio/dio.dart';
import 'package:vasscom_test_project/data/services/api_service.dart';

abstract class UserRemoteDataSource {
  Future<Response> doLogin(String email, String password);

}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final ApiService _apiService;

  UserRemoteDataSourceImpl(this._apiService);

  @override
  Future<Response> doLogin(String email, String password) {
    return _apiService.doLogin(email, password);
  }

}