import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UiKitAppBar extends AppBar {
  UiKitAppBar({super.key});

  @override
  Color? get backgroundColor => Colors.white;

  @override
  Color? get shadowColor => Colors.transparent;

  @override
  Widget? get leading => Builder(
    builder: (context) {
      return GestureDetector(
        onTap: () {
          Scaffold.of(context).openEndDrawer();
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset('assets/icon/ic_menu.svg', width: 14, height: 19),
        ),
      );
    }
  );


  @override
  List<Widget>? get actions => [
    Padding(
      padding: const EdgeInsets.only(left: 32),
      child: SvgPicture.asset('assets/icon/ic_trolley.svg', width: 14, height: 19),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 32),
      child: SvgPicture.asset('assets/icon/ic_notification.svg', width: 14, height: 19),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 32),
    )
  ];

}