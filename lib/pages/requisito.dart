import 'package:formularioflutter/pages/requisito.dart';

import 'package:flutter/material.dart';

class Requisito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requisitos'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción para crear un nuevo requisito
            },
            child: Text(
              'Crear',
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // por si agregas más columnas
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
                DataCell(Text('Certificado de Nacimiento')),
                DataCell(Text('Activo')),
                DataCell(Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.green),
                      onPressed: () {
                        // Acción para editar requisito
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Acción para eliminar requisito
                      },
                    ),
                  ],
                )),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Fotocopia de Carnet del Tutor')),
                DataCell(Text('Inactivo')),
                DataCell(Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.green),
                      onPressed: () {
                        // Acción para editar requisito
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        // Acción para eliminar requisito
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
