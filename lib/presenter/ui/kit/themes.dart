import 'package:flutter/material.dart';

class UiKitColors {
  static const donker100 = Color(0xFF002060);
  static const donker80 = Color(0xFF1D334F);
  static const donker50 = Color(0xFF597393);
  static const donker30 = Color(0xFFA3CAFA);

  static const sky100 = Color(0xFF00D9D5);

  static const light100 = Color(0xFFECECEC);
  static const light80 = Color(0xFFE5E5E5);
  static const light60 = Color(0xFFBEBEBE);

  static const red80 = Color(0xFFEB0004);

  static const orange100 = Color(0xFFFF7200);

  static const green70 = Color(0xFF007025);
  static const green30 = Color(0xFFB3FFCB);

  static const grey100 = Color(0xFF6A6A6A);
  static const grey40 = Color(0xFFBDBDBD);
  static const grey30 = Color(0xFFEBEDF7);

}

class UiKitTextStyle {
  static TextStyle getType(UiKitTextStyleType type) {
    return TextStyle(
      fontFamily: type.fontFamily,
      fontWeight: type.weight,
      fontSize: type.size,
      color: type.color
    );
  }
}

enum UiKitTextStyleType {
  display2(size: 28, weight: FontWeight.w800, fontFamily : 'Poppins'),
  display1(size: 28, weight: FontWeight.w600, fontFamily : 'Poppins'),
  headline2(size: 18, weight: FontWeight.w800, fontFamily : 'Poppins'),
  headline1(size: 18, weight: FontWeight.w600, fontFamily : 'Poppins'),
  title2(size: 16, weight: FontWeight.w600, fontFamily : 'Poppins'),
  title1(size: 16, weight: FontWeight.w600, fontFamily : 'Proxima-Nova', color: UiKitColors.donker50),
  body2(size: 14, weight: FontWeight.w600, fontFamily : 'Proxima-Nova'),
  body1(size: 14, weight: FontWeight.w400, fontFamily : 'Proxima-Nova'),
  caption(size: 12, weight: FontWeight.w400, fontFamily : 'Proxima-Nova', color: UiKitColors.donker50),
  button2(size: 14, weight: FontWeight.w600, fontFamily : 'Poppins'),
  button1(size: 14, weight: FontWeight.normal, fontFamily : 'SF-Pro');

  const UiKitTextStyleType({
    required this.size,
    required this.weight,
    required this.fontFamily,
    this.color = UiKitColors.donker100,
  });

  final double size;
  final FontWeight weight;
  final String fontFamily;
  final Color color;
}

class UiKitTheme {
  static final ThemeData lightTheme = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
            UiKitTextStyle.getType(UiKitTextStyleType.button2)
        ),
      )
    ),
    textTheme: TextTheme(
      displayLarge: UiKitTextStyle.getType(UiKitTextStyleType.display2),
      displayMedium: UiKitTextStyle.getType(UiKitTextStyleType.display1),
      headlineLarge: UiKitTextStyle.getType(UiKitTextStyleType.headline2),
      headlineMedium: UiKitTextStyle.getType(UiKitTextStyleType.headline1),
      bodyLarge: UiKitTextStyle.getType(UiKitTextStyleType.body2),
      bodyMedium: UiKitTextStyle.getType(UiKitTextStyleType.body1),
      bodySmall: UiKitTextStyle.getType(UiKitTextStyleType.caption),
      titleLarge: UiKitTextStyle.getType(UiKitTextStyleType.title2),
      titleMedium: UiKitTextStyle.getType(UiKitTextStyleType.title1),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(12)
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
            UiKitTextStyle.getType(UiKitTextStyleType.button2)
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            UiKitColors.donker100
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: UiKitColors.donker100,
    ),
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    colorScheme: const ColorScheme.light(
      primary: UiKitColors.donker100,
      onPrimary: Colors.white,
      primaryContainer: UiKitColors.donker30,
      onPrimaryContainer: UiKitColors.donker100,
      background: Colors.white,
      surface: UiKitColors.light80,
    ),
  );

  static TextTheme textTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  static ColorScheme colorScheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  static ThemeData themeData(BuildContext context) {
    return Theme.of(context);
  }
}