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
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                  ])
                ]),
          ),),
    );
    throw UnimplementedError();
  }
}