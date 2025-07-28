import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formularioflutter/pages/turno.dart';

class Turno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Turno'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción para "Crear"
            },
            child: Text(
              'Crear',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // útil para muchas columnas
          child: DataTable(
            columns: [
              DataColumn(label: Text('No')),
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Estado')),
              DataColumn(label: Text('Acciones')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Mañana')),
                DataCell(Text('Activo')),
                DataCell(Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.green),
                      onPressed: () {
                        // Acción para editar
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Acción para borrar
                      },
                    ),
                  ],
                )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}