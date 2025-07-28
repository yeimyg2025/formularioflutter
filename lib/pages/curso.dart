import 'package:flutter/material.dart';

class Curso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cursos'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción para "Crear nuevo"
              // Navigator.push(...);
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
          scrollDirection: Axis.horizontal, // útil si hay muchas columnas
          child: DataTable(
            columns: [
              DataColumn(label: Text('No')),
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Capacidad')),
              DataColumn(label: Text('Descripción')),
              DataColumn(label: Text('Acciones')), // << necesaria
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Nidito')),
                DataCell(Text('25')),
                DataCell(Text('De 1 a 2 años')),
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
