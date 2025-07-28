import 'package:flutter/material.dart';
void main(){//metodo
  runApp(MyApp());
}

class MyApp extends StatelessWidget {//clase
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de registro',//texto plano
         theme: ThemeData(
             primarySwatch: Colors.deepPurple,
            primaryColor: const Color(0xFF1E3A8A),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF1E3A8A),
              secondary: const Color(0xFF6B7280),
            ),
              useMaterial3: true),
      home: const LoginFormScreen(),
      debugShowCheckedModeBanner: false,
      );
    throw UnimplementedError();
  }
}

class LoginFormScreen extends StatelessWidget{
  const LoginFormScreen({super.key});

  static const Color primaryNavy = Color(0xFF1E3A8A);
  static const Color backgroundGrey = Color(0xFFF9FAFB);
  static const Color secondaryGrey = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundGrey,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: secondaryGrey.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ]
          ),
        ),
      ),
    );
  }
}
