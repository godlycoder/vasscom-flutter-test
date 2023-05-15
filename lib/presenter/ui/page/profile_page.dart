import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/domain/uimodel/profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/app_bar.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/card_profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/direct_notification.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/drawer.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/personal_data_info.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/tab.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/text_input.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiKitAppBar(),
      endDrawer: const UiKitDrawer(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: UiKitTabs(
              type: UiKitTabType.center,
              tabs: [
                'Profile Saya',
                'Pengaturan'
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              decoration: BoxDecoration(
                color: UiKitTheme.colorScheme(context).onPrimary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  UiKitCardProfile(
                    data: ProfileUiModel(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      'Praja',
                      'Angga',
                      'Membership BBLK'
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
                    child: Column(
                      children: [
                        Text(
                          'Pilih data yang ingin ditampilkan',
                          style: UiKitTheme.textTheme(context).titleLarge,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: UiKitPersonalDataInfo(),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: UiKitTextInput(
                            title: 'Nama Depan',
                            hint: 'Masukan nama depan',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: UiKitTextInput(
                            title: 'Nama Belakang',
                            hint: 'Masukan nama belakang',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: UiKitTextInput(
                            title: 'No. KTP',
                            hint: 'Masukkan No. KTP anda',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: UiKitTextInput(
                            title: 'Email',
                            hint: 'Masukkan email anda',
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: UiKitTextInput(
                            title: 'No. Telpon',
                            hint: 'Masukkan no. telepon anda',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('assets/icon/ic_attention.svg'),
                              Text(
                                'Pastikan profile anda terisi dengan benar,\ndata pribadi anda terjamin keamanannya',
                                style: UiKitTheme.textTheme(context).caption,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Simpan Profile')
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 77),
            child: UiKitDirectNotification(),
          )
        ],
      ),
    );
  }
}
