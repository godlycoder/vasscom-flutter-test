import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vasscom_test_project/data/datasource/user_remote_data_source.dart';
import 'package:vasscom_test_project/data/repository/user_repository.dart';
import 'package:vasscom_test_project/data/services/api_service.dart';
import 'package:vasscom_test_project/domain/repository/user_repository.dart';
import 'package:vasscom_test_project/domain/usecase/do_login.dart';
import 'package:vasscom_test_project/presenter/bloc/login/login_cubit.dart';

final locator = GetIt.instance;

Future<void> init() async {

  final dio = Dio(
    BaseOptions(baseUrl: 'https://reqres.in/api')
  );

  locator.registerLazySingleton(() => LoginCubit(locator()));

  locator.registerLazySingleton(() => DoLogin(locator()));

  locator.registerLazySingleton<UserRepository>(() =>
      UserRepositoryImpl(locator()));

  locator.registerLazySingleton<UserRemoteDataSource>(() =>
      UserRemoteDataSourceImpl(locator()));

  locator.registerLazySingleton(() => ApiService(dio));
}