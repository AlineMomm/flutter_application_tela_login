import 'package:flutter/material.dart';
import 'package:flutter_application_tela_login/features/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LoginViewModel>(context);

    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: vm.updateUsername,
            decoration: InputDecoration(labelText: 'Usuário'),
          ),
          ElevatedButton(
            onPressed: vm.isValid() ? () => print('Login OK') : null,
            child: Text('Entrar'),
          )
        ],
      ),
    );
  }
}
