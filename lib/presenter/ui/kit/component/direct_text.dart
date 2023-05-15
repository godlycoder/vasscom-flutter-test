import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitDirectionText extends StatelessWidget {
  final String describeText;
  final String actionText;
  final Function onActionClick;
  const UiKitDirectionText({Key? key, required this.describeText, required this.actionText, required this.onActionClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styleType = UiKitTextStyleType.body2;

    return Center(
      child: RichText(
        text: TextSpan(
            text: describeText,
            style: TextStyle(
              fontSize: styleType.size,
              fontWeight: styleType.weight,
              fontFamily: styleType.fontFamily,
              color: UiKitColors.light60
            ),
            children: [
              TextSpan(
                text: ' $actionText',
                style: TextStyle(
                  fontSize: styleType.size,
                  fontWeight: styleType.weight,
                  fontFamily: styleType.fontFamily,
                  color: UiKitColors.donker100
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    onActionClick();
                  }
              )
            ]
        ),
      ),
    );
  }
}
