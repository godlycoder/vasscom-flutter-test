import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UiKitButton extends ElevatedButton {
  final String? iconAssets;
  final Widget label;

  const UiKitButton({
    super.key,
    this.iconAssets,
    required this.label,
    super.onPressed,
    super.child,
  });


  @override
  // TODO: implement child
  Widget? get child => Row(
    children: content(),
  );

  List<Widget> content() {
    List<Widget> content = [
      const Spacer(),
      label,
      const Spacer(),
    ];

    if (iconAssets != null) {
      content.add(
          SvgPicture.asset(iconAssets!, color: Colors.white)
      );
    }

    return content;
  }


}