import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': 'Boris',
      'lastName': 'Miranda',
      'email': 'email@email.cm',
      'password': '23123121',
      'role': 'admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("inputs"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormkey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: "nombre del usuario",
                  labelText: "nombre",
                  formValues: formValues,
                  formProperty: 'firstName',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "apellido del usuario",
                  labelText: "apellido",
                  formValues: formValues,
                  formProperty: 'lastName',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "email del usuario",
                  labelText: "email",
                  keyboardType: TextInputType.emailAddress,
                  formValues: formValues,
                  formProperty: 'email',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: "password del usuario",
                  labelText: "password",
                  obscureText: true,
                  formValues: formValues,
                  formProperty: 'password',
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                  ],
                  onChanged: (value) => formValues['role'] = value ?? 'Admin',
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Guardar",
                        style: TextStyle(),
                      ))),
                  onPressed: () {
                    // FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormkey.currentState!.validate()) {
                      return;
                    }
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
