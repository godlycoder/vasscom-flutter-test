import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/domain/uimodel/profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/menu.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';
import 'package:vasscom_test_project/presenter/ui/router.gr.dart';

class UiKitDrawer extends Drawer {
  const UiKitDrawer({super.key});

  @override
  Widget? get child => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Builder(
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: UiKitProfile(
                          data: ProfileUiModel(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              'Praja',
                              'Angga',
                              'Membership BBLK'
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: UiKitMenu(
                        title: 'Profile Saya',
                        onClick: () {
                          context.router.navigate(const ProfileRoute());
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: UiKitMenu(
                        title: 'Pengaturan',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 47),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                UiKitColors.red80
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(23)
                                )
                            ),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 50, vertical: 7)
                            )
                        ),
                        child: const Text('Logout',
                          style: TextStyle(
                              fontFamily: 'SF-Pro',
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 79
                      ),
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text(
                            'Ikuti kami di',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: UiKitColors.donker100,
                                fontSize: 16
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SvgPicture.asset('assets/icon/ic_facebook.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SvgPicture.asset('assets/icon/ic_instagram.svg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SvgPicture.asset('assets/icon/ic_twitter.svg'),
                          ),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 86),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'FAQ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: UiKitColors.light60
                      ),
                    ),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: UiKitColors.light60
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}