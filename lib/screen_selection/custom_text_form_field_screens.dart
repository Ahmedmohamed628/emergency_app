import 'package:ambulance/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldScreens extends StatefulWidget {
  String label;
  TextInputType keyboardType;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  Widget? suffixIcon;
  Widget? prefixIcon;

  CustomTextFormFieldScreens(
      {required this.label,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.validator,
      this.isPassword = false,
      this.suffixIcon,
      this.prefixIcon});

  @override
  State<CustomTextFormFieldScreens> createState() =>
      _CustomTextFormFieldScreensState();
}

class _CustomTextFormFieldScreensState
    extends State<CustomTextFormFieldScreens> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          // errorStyle: TextStyle(color: Colors.black54),
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          labelStyle: TextStyle(color: MyTheme.redColor),
          label: Text(widget.label),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: MyTheme.redColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: MyTheme.redColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: MyTheme.redColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: MyTheme.redColor)),
        ),
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.validator,
      ),
    );
  }
}
