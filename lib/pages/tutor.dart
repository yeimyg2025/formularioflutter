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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('No')),
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Apellido')),
              DataColumn(label: Text('Parentesco')),
              DataColumn(label: Text('Teléfono')),
              DataColumn(label: Text('Dirección Casa')),
              DataColumn(label: Text('Dirección de Trabajo')),
              DataColumn(label: Text('CI')),
              DataColumn(label: Text('Estado')),
              DataColumn(label: Text('Acciones')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Lucía')),
                DataCell(Text('López')),
                DataCell(Text('Mamá')),
                DataCell(Text('72683354')),
                DataCell(Text('Luján')),
                DataCell(Text('Los lotes')),
                DataCell(Text('859463')),
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
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Carlos')),
                DataCell(Text('Mamani')),
                DataCell(Text('capellán')),
                DataCell(Text('73211233')),
                DataCell(Text('Zona Central')),
                DataCell(Text('Av. Libertad #123')),
                DataCell(Text('7894561')),
                DataCell(Text('activo')),
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