import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitFilter extends StatefulWidget {
  final List<String> tabs;
  const UiKitFilter({Key? key, required this.tabs}) : super(key: key);

  @override
  State<UiKitFilter> createState() => _UiKitFilterState();
}

class _UiKitFilterState extends State<UiKitFilter> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.tabs.length,
          itemBuilder: (_, index) {
            final title = widget.tabs[index];
            return Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 25),
              child: GestureDetector(
                child: selectedIndex == index ? selectedItem(title) : unselectedItem(title),
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            );
          }
      ),
    );
  }

  Widget selectedItem(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
      decoration: BoxDecoration(
          color: UiKitTheme.themeData(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
          ]
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'Proxima-Nova',
              fontSize: 12,
              color: UiKitTheme.themeData(context).colorScheme.onPrimary
          ),
        ),
      ),
    );
  }

  Widget unselectedItem(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
      decoration: BoxDecoration(
          color: UiKitTheme.themeData(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
          ]
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Proxima-Nova',
              fontSize: 12,
              color: UiKitTheme.themeData(context).colorScheme.primary
          ),
        ),
      ),
    );
  }
}
