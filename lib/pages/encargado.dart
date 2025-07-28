import 'package:flutter/material.dart';

class Encargado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encargados'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción para crear un encargado
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
          scrollDirection: Axis.horizontal, // ← Permite scroll si hay muchas columnas
          child: DataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Apellido')),
              DataColumn(label: Text('Teléfono')),
              DataColumn(label: Text('Especialidad')),
              DataColumn(label: Text('Fecha Contrato')),
              DataColumn(label: Text('Dirección')),
              DataColumn(label: Text('Cargo')),
              DataColumn(label: Text('Acciones')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('María')),
                DataCell(Text('Gómez')),
                DataCell(Text('71234567')),
                DataCell(Text('Psicopedagogía')),
                DataCell(Text('2024-03-15')),
                DataCell(Text('Av. Siempre Viva 123')),
                DataCell(Text('Encargada General')),
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
                DataCell(Text('Luis')),
                DataCell(Text('Rojas')),
                DataCell(Text('78912345')),
                DataCell(Text('Educación Inicial')),
                DataCell(Text('2023-11-01')),
                DataCell(Text('Calle Libertad #456')),
                DataCell(Text('Coordinador')),
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
