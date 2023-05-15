import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/domain/uimodel/service.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitCardService extends StatelessWidget {
  final ServiceUiModel data;
  const UiKitCardService({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: UiKitTheme.themeData(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
          ]
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15, left: 20, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: UiKitTheme.textTheme(context).titleLarge,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      'Rp. ${data.price}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: UiKitColors.orange100
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset('assets/icon/ic_hospital.svg'),
                        ),
                        Text(
                          data.hospitalName,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: UiKitColors.grey100
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset('assets/icon/ic_pin.svg'),
                        ),
                        Text(
                          data.place,
                          style: UiKitTheme.textTheme(context).caption,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          Container(
            width: 130,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    data.imageUrl,
                  )
                )
            ),
          )
        ],
      ),
    );
  }
}
