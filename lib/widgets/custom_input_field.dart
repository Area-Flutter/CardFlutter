import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String fromProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    required this.hintText, 
    required this.labelText, 
    required this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.fromProperty, 
    required this.formValues, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      autofocus: false,
      // initialValue: 'Cualquier cosa',
      textCapitalization: TextCapitalization.words,
      onChanged: ( value ) => formValues[fromProperty] = value,
      validator: (value){
        if (value == null) {
          return 'Campo requerido';
        }
        return value.length < 3 ? 'Mínimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.indigo
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10)
        //   )
        // )
      ),
    );
  }
}
