import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitCopyright extends StatelessWidget {
  const UiKitCopyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SvgPicture.asset('assets/icon/ic_copyright.svg', width: 13, height: 13,),
        ),
        const Text(
          'SILK. all right reserved.',
          style: TextStyle(
              color: UiKitColors.light60,
              fontFamily: 'Proxima-Nova',
              fontWeight: FontWeight.w600,
              fontSize: 12
          ),
        )
      ],
    );
  }
}
