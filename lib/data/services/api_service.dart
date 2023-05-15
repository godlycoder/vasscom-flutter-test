import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> doLogin(String email, String password) {
    return _dio.post('/login', data: {
      'email' : email,
      'password' : password
    });
  }
  
  
}