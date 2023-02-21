import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  final Icon icon;
  final String label;
  final bool obs;
  final TextEditingController controller;
  const textField(
      {Key? key, required this.icon, required this.label, required this.obs,required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 55,
        width: double.infinity,
        child: TextField(
          controller: controller,
          obscureText: obs,
          decoration: InputDecoration(
            filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              labelText: label,
              prefixIcon: icon,),
          cursorColor: Colors.lightBlue,

        ),
      ),
    );
  }
}
