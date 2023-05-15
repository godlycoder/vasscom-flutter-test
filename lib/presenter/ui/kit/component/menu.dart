import 'package:flutter/material.dart';

class UiKitMenu extends StatelessWidget {
  final String title;
  final Function()? onClick;

  const UiKitMenu({Key? key, required this.title, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Row(
        children: [
          Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xFF9A9A9A)
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Icon(Icons.keyboard_arrow_right, color: Color(0xFF9A9A9A)),
          )
        ],
      ),
    );
  }
}
