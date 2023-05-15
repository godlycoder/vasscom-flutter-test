import 'package:dartz/dartz.dart';
import 'package:vasscom_test_project/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> doLogin(String email, String password);
}