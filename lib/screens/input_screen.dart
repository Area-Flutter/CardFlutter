import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: const [
                  CustomInputField(helperText: '3 letras', hintText: 'Nombre del Usuario', labelText: 'Nombre',)
                ],
              )),
        ));
  }
}

