import 'package:flutter/material.dart';
import 'package:flutter_application_tela_login/features/view/login_view.dart';
import 'package:flutter_application_tela_login/features/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        home: LoginView(),
      ),
    );
  }
}
