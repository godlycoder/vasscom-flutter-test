import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vasscom_test_project/injection.dart' as di;
import 'package:vasscom_test_project/presenter/bloc/login/login_cubit.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/button.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/copyright.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/direct_text.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/text_input.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';
import 'package:vasscom_test_project/presenter/ui/router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final bloc = di.locator<LoginCubit>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: BlocConsumer<LoginCubit, LoginState>(
        builder: (_, state) {
          return Scaffold(
            body: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 110, left: 20),
                    child: RichText(
                        text: TextSpan(
                            text: 'Hai, ',
                            style: UiKitTheme.textTheme(context).displayMedium,
                            children: [
                              TextSpan(
                                  text: 'Selamat Datang',
                                  style: UiKitTheme.textTheme(context).displayLarge
                              )
                            ]
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 4),
                    child: Text(
                      'Silahkan login untuk melanjutkan',
                      style: UiKitTheme.textTheme(context).caption,
                    ),
                  ),
                  Image.asset('assets/image/img_boarding_illustration.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        UiKitTextInput(
                          controller: emailController,
                          title: 'Email',
                          hint: 'Masukkan email anda',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: UiKitTextInput(
                            controller: passwordController,
                            title: 'Password',
                            hint: 'Masukkan password anda',
                            isPasswordMode: true,
                            showForgetPassword: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: UiKitButton(
                                onPressed: () {
                                  doLogin();
                                },
                                iconAssets: 'assets/icon/ic_arrow_right.svg',
                                label: state.maybeWhen(
                                    loading: () => const SizedBox(
                                      width: 18,
                                      height: 18,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                    orElse: () => const Text('Login')
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 31),
                          child: UiKitDirectionText(
                              describeText: 'Belum punya akun ?',
                              actionText: 'Daftar sekarang',
                              onActionClick: () {
                                context.router.navigate(const RegisterRoute());
                              }
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 40,),
                          child: UiKitCopyright(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (_, state) {
          state.maybeWhen(
            success: (_) => context.router.navigate(const DashboardRoute()),
            error: (message) => Fluttertoast.showToast(msg: message),
            orElse: () {}
          );
        }
      ),
    );
  }

  void doLogin() {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(msg: 'Semua field harus diisi');
    } else {
      bloc.doLogin(email, password);
    }
  }
}
