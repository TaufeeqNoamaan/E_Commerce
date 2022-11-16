import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final Icon? icon;
   bool obscure = false;
  final String? helper;
   CustomInput({
    super.key,
    required this.controller,
    this.icon,
    required this.obscure,
    this.helper
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: icon,
        helperText: helper,
        
        
      ),
    );
  }
}
