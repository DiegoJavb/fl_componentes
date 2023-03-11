import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CustomInputField(
                helperText: '',
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
                icon: Icons.group_outlined,
                suffixIcon: Icons.assignment_ind_outlined,
              )
            ],
          ),
        ),
      ),
    );
  }
}
