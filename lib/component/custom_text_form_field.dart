import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  TextInputType keyboardType;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  Widget? suffixIcon;
  Widget? prefixIcon;

  CustomTextFormField(
      {required this.label,
      this.keyboardType = TextInputType.text,
      required this.controller,
      required this.validator,
      this.isPassword = false,
      this.suffixIcon,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.black54),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelStyle: TextStyle(color: Colors.white),
          label: Text(label),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.white38)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.white38)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.white38)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.white38)),
        ),
        keyboardType: keyboardType,
        // de 3mltha 3shan a8yr no3 el keyboard 3la 7sb ana hktb fe el email/ password/ name.. lw password yb2a keyboard arkam w hakza
        controller: controller,
        // 3shan a5od el data elly ktbha el user
        validator: validator,
        obscureText: isPassword,
      ),
    );
  }
}
