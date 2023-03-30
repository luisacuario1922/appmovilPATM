import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.counterText, this.prefixIcon, this.suffixIcon, this.icon, this.keyboardType, required this.obscureText, required this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        
      },
      validator: (value) {
        if(value==null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Nombre del usuario',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        counterText: '3 caracteres',
        prefixIcon: Icon(Icons.group_outlined),
        suffixIcon: Icon(Icons.assignment_ind_outlined),
        icon: Icon(Icons.verified_user_outlined),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightGreen
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )
      ),
    );
  }
}