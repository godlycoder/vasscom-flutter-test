import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';

class UiKitTextInput extends StatefulWidget {
  final String title;
  final String? hint;
  final bool? isPasswordMode;
  final bool? showForgetPassword;
  final TextEditingController? controller;
  const UiKitTextInput({Key? key, required this.title, this.hint, this.isPasswordMode, this.showForgetPassword, this.controller}) : super(key: key);

  @override
  State<UiKitTextInput> createState() => _UiKitTextInputState();
}

class _UiKitTextInputState extends State<UiKitTextInput> {

  var isObscure = false;

  @override
  void initState() {
    isObscure = widget.isPasswordMode != null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title, style: UiKitTheme.textTheme(context).titleLarge),
            Visibility(
              visible: widget.showForgetPassword == true,
              child: Text(
                'Lupa Password anda ?',
                style: UiKitTheme.textTheme(context).titleMedium,
              )
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(color: UiKitColors.light80, blurRadius: 16, blurStyle: BlurStyle.normal)
                ]
            ),
            child: TextField(
              controller: widget.controller,
              style: const TextStyle(
                  color: UiKitColors.donker100,
                  fontSize: 12
              ),
              obscureText: isObscure == true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 24),
                  hintText: widget.hint,
                  suffixIcon: suffixIcon(),
                  hintStyle: UiKitTheme.textTheme(context).bodySmall,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget? suffixIcon() {
    if (widget.isPasswordMode == true) {
      return passwordToggle();
    }
    return null;
  }

  Widget passwordToggle() {
    return IconButton(
      onPressed: () {
        setState(() {
          isObscure = !isObscure;
        });
      },
      icon: Icon(
          isObscure? Icons.visibility_off_outlined : Icons.visibility_outlined
      ),
    );
  }
}

