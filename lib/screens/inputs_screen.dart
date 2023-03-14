import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    TextEditingController();
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
                CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Email del usuario',
                  labelText: 'Email',
                  type: TextInputType.emailAddress,
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  isPassword: true,
                  icon: Icons.group_outlined,
                  suffixIcon: Icons.assignment_ind_outlined,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
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
                      print(formValues);
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
