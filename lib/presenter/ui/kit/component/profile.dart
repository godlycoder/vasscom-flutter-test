import 'package:flutter/material.dart';
import 'package:vasscom_test_project/domain/uimodel/profile.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitProfile extends StatelessWidget {
  final ProfileUiModel data;
  final UiKitProfileType? type;
  const UiKitProfile({Key? key, required this.data, this.type = UiKitProfileType.small}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(data.imageUrl)
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: '${data.firstName} ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: type == UiKitProfileType.small ? UiKitTheme.colorScheme(context).primary :
                      UiKitTheme.colorScheme(context).onPrimary,
                    fontSize: type == UiKitProfileType.small ? 14 : 18,
                  ),
                  children: [
                    TextSpan(
                      text: data.lastName,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: type == UiKitProfileType.small ? UiKitTheme.colorScheme(context).primary :
                          UiKitTheme.colorScheme(context).onPrimary,
                        fontSize: type == UiKitProfileType.small ? 14 : 18
                      )
                    )
                  ]
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  data.status,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: (type == UiKitProfileType.small ? UiKitTheme.colorScheme(context).primary :
                      UiKitTheme.colorScheme(context).onPrimary).withOpacity(0.5),
                      fontSize: type == UiKitProfileType.small ? 11 : 14
                    )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

enum UiKitProfileType {
  large,
  small
}
