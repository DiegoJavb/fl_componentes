import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Diego',
      'last_name': 'Bacuy',
      'email': 'diego@mail.com',
      'password': '123456',
      'role': 'Admin',
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
                const CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Email del usuario',
                  labelText: 'Email',
                  type: TextInputType.emailAddress,
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  isPassword: true,
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    //Todo: imprimir valores del formulario
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}