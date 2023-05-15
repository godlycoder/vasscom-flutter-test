import 'package:dartz/dartz.dart';
import 'package:vasscom_test_project/domain/repository/user_repository.dart';
import 'package:vasscom_test_project/failure.dart';

class DoLogin {
  final UserRepository _repository;

  DoLogin(this._repository);

  Future<Either<Failure, String>> execute(String email, String password) {
    return _repository.doLogin(email, password);
  }

}