import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'First Name': 'Cualquier',
      'last_name': 'Cosa',
      'email': 'cualquiercosa@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                      helperText: 'Nombre',
                      hintText: 'Nombre del Usuario',
                      labelText: 'Nombre',
                      formValues: formValues,
                      fromProperty: 'first_name',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                        helperText: 'Apellido',
                        hintText: 'Apellido del Usuario',
                        labelText: 'Apellido',
                        formValues: formValues,
                        fromProperty: 'last_name'),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                        helperText: 'Correo',
                        hintText: 'Correo del Usuario',
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        formValues: formValues,
                        fromProperty: 'email'),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomInputField(
                        helperText: 'Contraseña',
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        obscureText: true,
                        formValues: formValues,
                        fromProperty: 'password'),
                    const SizedBox(
                      height: 30,
                    ),

                    DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Superuser',
                          child: Text('Superuser'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Jr. Developer',
                          child: Text('Jr. Developer'),
                        ),
                      ], 
                       onChanged: (value) { 
                         print(value);
                         formValues['role'] = value ?? 'Admin';
                       }, 
                    ),

                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(
                              FocusNode()); //Quitar el foco del teclado
                          if (!myFormKey.currentState!.validate()) {
                            print('Formulario no Valido');
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                            child: Center(child: Text('Guardar'))))
                  ],
                ),
              )),
        ));
  }
}
