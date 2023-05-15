import 'package:dartz/dartz.dart';
import 'package:vasscom_test_project/data/datasource/user_remote_data_source.dart';
import 'package:vasscom_test_project/domain/repository/user_repository.dart';
import 'package:vasscom_test_project/failure.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, String>> doLogin(String email, String password) async {
    try {
      final result = await _remoteDataSource.doLogin(email, password);
      final token = result.data['token'];

      if (token == null) {
        return Left(
          Failure(result.data['error'])
        );
      }

      return Right(result.data['token']);
    } on Exception catch (error) {
      return Left(
        Failure(
          error.toString()
        )
      );
    }
  }

}