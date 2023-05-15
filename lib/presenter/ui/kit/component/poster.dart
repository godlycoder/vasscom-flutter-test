import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitPoster extends StatelessWidget {
  final String title;
  final String description;
  final String actionTitle;
  final String assets;
  final bool? isRightOrientation;

  const UiKitPoster({
    Key? key, required this.title,
    required this.description,
    required this.actionTitle,
    required this.assets,
    this.isRightOrientation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
                ]
            ),
            child: Padding(
              padding: EdgeInsets.only(left: isRightOrientation == true ? 30 : 0),
              child: Row(
                children: descriptionWidget(context),
              ),
            )
          ),
        ),
        Row(
          children: illustrationWidget(),
        )
      ],
    );
  }

  List<Widget> descriptionWidget(context) {
    List<Widget> widgets = [
      Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  title,
                  style: UiKitTheme.textTheme(context).headlineLarge
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  description,
                  style: UiKitTheme.textTheme(context).caption,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Row(
                    children: [
                      Text(actionTitle),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SvgPicture.asset('assets/icon/ic_arrow_right.svg', width: 14, height: 14),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
      ),
      const Spacer(flex: 2)
    ];

    if (isRightOrientation == true) {
      return widgets.reversed.toList();
    }

    return widgets;
  }

  List<Widget> illustrationWidget() {
    List<Widget> widgets = [
      const Spacer(flex: 3),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Image.asset(assets, fit: BoxFit.fill, width: 130, height: 130),
      )
    ];

    if (isRightOrientation == true) {
      return widgets.reversed.toList();
    }

    return widgets;
  }
}
