import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitSearchInput extends StatelessWidget {
  const UiKitSearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
                ]
            ),
            child: SvgPicture.asset('assets/icon/ic_adjust.svg'),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 10),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
                ]
            ),
            child: const TextField(
              style: TextStyle(
                  color: UiKitColors.donker100,
                  fontSize: 16,
                fontWeight: FontWeight.normal
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 24),
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: UiKitColors.light60
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none
                  )
              ),
            ),
          )
        )
      ],
    );
  }
}
