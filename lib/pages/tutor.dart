import 'package:flutter/material.dart';

class tutor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutores'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción para "Crear nuevo"
            },
            child: Text(
              'Crear nuevo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),


    );
  }
}