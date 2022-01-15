import 'package:flutter/material.dart';

import 'login.dart';

class CocomongApp extends StatelessWidget {
  const CocomongApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocomong',
      theme: ThemeData(
        primaryColor: Color(0xFF5B836A),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF5B836A)
        )
      ),
      home: const LoginPage(),
    );
  }
}
