import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes.dart';

class UiKitPersonalDataInfo extends StatelessWidget {
  const UiKitPersonalDataInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: UiKitColors.sky100,
            borderRadius: BorderRadius.circular(36),
          ),
          child: SvgPicture.asset('assets/icon/ic_personal.svg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Data Diri',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF333333)
                ),
              ),
              Text(
                'Data diri anda sesuai KTP',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: UiKitColors.grey40
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: UiKitColors.grey30,
            borderRadius: BorderRadius.circular(36),
          ),
          child: SvgPicture.asset('assets/icon/ic_pin.svg', color: UiKitColors.grey100),
        )
      ],
    );
  }
}
