import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vasscom_test_project/domain/usecase/do_login.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final DoLogin _doLogin;
  LoginCubit(this._doLogin) : super(const LoginState.initial());

  void doLogin(String email, String password) async {
    emit(const _Loading());

    final result = await _doLogin.execute(email, password);

    result.fold(
      (error) => emit(_Error(message: error.message)),
      (data) => emit(_Success(token: data))
    );
  }
}
