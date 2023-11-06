import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
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
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          // errorStyle: TextStyle(color: Colors.black54),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon:
                      Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  color: Colors.red)
              : null,
          prefixIcon: widget.prefixIcon,
          labelStyle: TextStyle(color: Colors.red),
          label: Text(widget.label),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.red)),
        ),
        keyboardType: widget.keyboardType,
        // de 3mltha 3shan a8yr no3 el keyboard 3la 7sb ana hktb fe el email/ password/ name.. lw password yb2a keyboard arkam w hakza
        controller: widget.controller,
        // 3shan a5od el data elly ktbha el user
        validator: widget.validator,
        obscureText: isObscure,
      ),
    );
  }
}
