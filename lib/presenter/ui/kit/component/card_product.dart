import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/domain/uimodel/product.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitCardProduct extends StatelessWidget {
  final ProductUiModel data;
  const UiKitCardProduct({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ratingStyle = UiKitTheme.textTheme(context).titleLarge;

    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
      decoration: BoxDecoration(
          color: UiKitTheme.themeData(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              SvgPicture.asset('assets/icon/ic_star.svg'),
              Text(
                data.rating.toString(),
                style: TextStyle(
                  fontWeight: ratingStyle?.fontWeight,
                  fontSize: ratingStyle?.fontSize,
                  fontFamily: ratingStyle?.fontFamily,
                  color: UiKitColors.light60
                )
              )
            ],
          ),
          Image.network(data.imageUrl, width: 100, height: 100, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(data.name, style: UiKitTheme.textTheme(context).titleMedium),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp. ${data.price}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: UiKitColors.orange100
                        ),
                      ),
                      Visibility(
                        visible: data.isReadyStock,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: UiKitColors.green30
                          ),
                          child: const Text(
                            'Ready Stock',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: UiKitColors.green70
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
