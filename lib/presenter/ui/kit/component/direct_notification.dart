import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitDirectNotification extends StatelessWidget {
  const UiKitDirectNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 22),
      width: double.maxFinite,
      color: UiKitTheme.colorScheme(context).primary,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 75),
              child: Text(
                'Ingin mendapat update\ndari kami ?',
                style: TextStyle(
                    color: UiKitTheme.colorScheme(context).onPrimary,
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                ),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Dapatkan\nnotifikasi',
              style: TextStyle(
                  color: UiKitTheme.colorScheme(context).onPrimary,
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),
            ),
          ),
          SvgPicture.asset('assets/icon/ic_arrow_right.svg', color: UiKitTheme.colorScheme(context).onPrimary)
        ],
      ),
    );
  }
}

