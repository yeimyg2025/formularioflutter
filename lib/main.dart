import 'package:flutter/material.dart';
import 'package:formularioflutter/pages/encargado.dart';
import 'package:formularioflutter/pages/turno.dart';
import 'package:formularioflutter/pages/tutor.dart';
import 'package:formularioflutter/pages/infante.dart';
import 'package:formularioflutter/pages/curso.dart';
import 'package:formularioflutter/pages/requisito.dart';
void main(){//metodo
  runApp(MyApp());
}


class MyApp extends StatelessWidget {//clase
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de registro',//texto plano
         theme: ThemeData(
             primarySwatch: Colors.purple,
            primaryColor: const Color(0xFFFF7700),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFFF7700),
              secondary: const Color(0xFFFF7700),
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

  static const Color primaryNavy = Color(0xFFFF7700);
  static const Color backgroundGrey = Color(0xFFF9FAFB);
  static const Color secondaryGrey = Color(0xFFFFD700);

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
            color: Colors.purple,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: secondaryGrey.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.lock, size: 40, color: primaryNavy,),
              const SizedBox(height: 12),
              const Text("Iniciar Sesion",
              style: TextStyle(
                fontSize: 24,
                color: primaryNavy,
              ),
              ),
              const SizedBox(height: 8),
              const Text("Complete sus datos personales", style: TextStyle(fontSize: 14,color: secondaryGrey),),
              const SizedBox(height: 24),
              //correo
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Correo Electronica",
                style: TextStyle(color: primaryNavy)),
              ),
              const SizedBox(height: 6),
              TextField(
                decoration: InputDecoration(
                  hintText: "ejemplo@gmail.com",
                  filled: true,
                  fillColor: backgroundGrey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                ),
              ),
              const SizedBox(height: 16),

              //campo contraseña
              const Align(
                alignment: Alignment.centerLeft,
                child:
                  Text("Contraseña", style: TextStyle(color: primaryNavy)),
              ),
              const SizedBox(height: 6),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  filled: true,
                  fillColor: backgroundGrey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                ),
              ),
              const SizedBox(height: 24),

              //Login
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Encargado()),
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryNavy,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "iniciar sesion",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              //Contraseña olvidada
              const Text(
                "¿olvidaste tu contraseña?",
                style: TextStyle(color: secondaryGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
