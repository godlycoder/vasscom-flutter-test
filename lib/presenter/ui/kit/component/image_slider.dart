import 'package:flutter/material.dart';
import 'package:snapping_page_scroll/snapping_page_scroll.dart';

class UiKitImageSlider extends StatefulWidget {
  final List<Image> images;
  const UiKitImageSlider({
    Key? key,
    required this.images
  }) : super(key: key);

  @override
  State<UiKitImageSlider> createState() => _UiKitImageSliderState();
}

class _UiKitImageSliderState extends State<UiKitImageSlider> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: SnappingPageScroll(
            scrollDirection: Axis.horizontal,
            children: widget.images,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
        Row(
          children: indicators(),
        )
      ],
    );
  }

  List<Widget> indicators() {
    List<Widget> indicators = [];

    for (int i = 0; i < widget.images.length; i ++) {
      Widget widget;
      if (selectedIndex == i) {
        widget = selectedIndicator();
      } else {
        widget = unselectedIndicator();
      }

      indicators.add(
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: widget,
        )
      );
    }

    return indicators;
  }

  Widget unselectedIndicator() {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
    );
  }

  Widget selectedIndicator() {
    return Container(
      height: 10,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
    );
  }
}
