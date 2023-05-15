import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/component/image_slider.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitHeader extends StatelessWidget {
  const UiKitHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: const [
                      0.05,
                      0.5
                    ],
                    colors: [
                      UiKitColors.donker30.withOpacity(0.5),
                      Colors.white
                    ]
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
                ]
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Solusi, ',
                                style: UiKitTheme.textTheme(context).headlineMedium,
                                children: [
                                  TextSpan(
                                      text: 'Kesehatan Anda',
                                      style: UiKitTheme.textTheme(context).headlineLarge
                                  )
                                ]
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'Update informasi seputar kesehatan semua bisa disini !',
                            style: UiKitTheme.textTheme(context).caption,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: ElevatedButton(
                            child: const Text('Selengkapnya'),
                            onPressed: () {

                            },
                          ),
                        )
                      ],
                    )
                ),
                const Spacer(flex: 2)
              ],
            ),
          ),
        ),
        Row(
          children: [
            const Spacer(flex: 3),
            UiKitImageSlider(
              images: [
                Image.asset('assets/image/img_info.png', fit: BoxFit.fill),
                Image.asset('assets/image/img_info.png', fit: BoxFit.fill),
                Image.asset('assets/image/img_info.png', fit: BoxFit.fill),
              ],
            )
          ],
        )
      ],
    );
  }
}
