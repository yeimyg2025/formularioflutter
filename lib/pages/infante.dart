import 'package:flutter/material.dart';

class infante extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infantes'),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text('Crear',
              style: TextStyle(color: Colors.purpleAccent),
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
                  DataColumn(label: Text('CI')),
                  DataColumn(label: Text('Estado')),
                  DataColumn(label: Text('Acciones')),

                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Lucía')),
                    DataCell(Text('López')),
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
                      ]),
          ),),
    );
    throw UnimplementedError();
  }
}