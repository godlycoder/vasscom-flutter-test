import 'package:flutter/material.dart';
import 'package:vasscom_test_project/domain/uimodel/profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/profile.dart';

import '../themes.dart';

class UiKitCardProfile extends StatelessWidget {
  final ProfileUiModel data;
  const UiKitCardProfile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UiKitTheme.themeData(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 40, bottom: 48),
            child: UiKitProfile(
              data: data,
              type: UiKitProfileType.large
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 42, left: 12, bottom: 11),
            child: Text(
                'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Proxima-Nova',
                    color: UiKitTheme.colorScheme(context).onPrimary
                )
            ),
          )
        ],
      ),
    );
  }
}
