import 'package:componentes_flutter/widgets/widget.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues={
      'first_name': 'Luis',
      'last_name': 'Virgen',
      'email': 'luisalberto1922@gmail.com',
      'password': '12345',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                  prefixIcon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  icon: Icons.verified_user_outlined,
                  formProperty: 'first_name', formValues: formValues
                ),
                const SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Apellidos',
                  hintText: 'Apellidos del usuario',
                  formProperty: 'last_name', formValues: formValues
                ),
                const SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email', formValues: formValues
                ),
                const SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  formProperty: 'password', formValues: formValues
                ),
                const SizedBox(height: 30),
                
                CustomInputField(
                  labelText: 'role',
                  hintText: 'Rol del usuario',
                  formProperty: 'role', formValues: formValues
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

