import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitTabs extends StatefulWidget {
  final List<String> tabs;
  final UiKitTabType? type;
  const UiKitTabs({Key? key, required this.tabs, this.type = UiKitTabType.left}) : super(key: key);

  @override
  State<UiKitTabs> createState() => _UiKitTabsState();
}

class _UiKitTabsState extends State<UiKitTabs> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: widget.type != UiKitTabType.left,
            child: const Spacer()
        ),
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
          decoration: BoxDecoration(
            color: UiKitTheme.themeData(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: tabs(),
          ),
        ),
        Visibility(
          visible: widget.type != UiKitTabType.right,
            child: const Spacer()
        )
      ],
    );
  }

  List<Widget> tabs() {
    List<Widget> items = [];

    for(int i = 0; i < widget.tabs.length; i ++) {
      Widget item;
      if (selectedIndex == i) {
        item = selectedTab(widget.tabs[i]);
      } else {
        item = unselectedTab(widget.tabs[i]);
      }

      items.add(
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = i;
            });
          },
          child: item,
        )
      );
    }

    return items;
  }

  Widget selectedTab(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: UiKitColors.sky100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: UiKitTheme.themeData(context).colorScheme.primary
          ),
        ),
      ),
    );
  }

  Widget unselectedTab(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: UiKitTheme.themeData(context).colorScheme.primary
          ),
        ),
      ),
    );
  }
}

enum UiKitTabType {
  center,
  left,
  right
}
