import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/button.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/copyright.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/direct_text.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/text_input.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';
import 'package:vasscom_test_project/presenter/ui/router.gr.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
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
                  Row(
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: UiKitTextInput(
                            title: 'Nama Depan',
                            hint: 'Masukan nama depan',
                          ),
                        )
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: UiKitTextInput(
                            title: 'Nama Belakang',
                            hint: 'Masukan nama belakang',
                          ),
                        )
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: UiKitTextInput(
                      title: 'No. KTP',
                      hint: 'Masukkan No. KTP anda',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: UiKitTextInput(
                      title: 'Email',
                      hint: 'Masukkan email anda',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: UiKitTextInput(
                      title: 'No. Telpon',
                      hint: 'Masukkan no. telepon anda',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: UiKitTextInput(
                      title: 'Password',
                      hint: 'Masukkan password anda',
                      isPasswordMode: true
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: UiKitTextInput(
                        title: 'Konfirmasi Password',
                        hint: 'Konfirmasi password anda',
                        isPasswordMode: true
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: UiKitButton(
                        label: const Text('Simpan Profile'),
                        iconAssets: 'assets/icon/ic_arrow_right.svg',
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 31),
                    child: UiKitDirectionText(
                        describeText: 'Sudah punya akun ?',
                        actionText: 'Login sekarang',
                        onActionClick: () {
                          context.router.navigate(const LoginRoute());
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
  }
}
