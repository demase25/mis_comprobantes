import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> months = [
    'Enero 2025',
    'Febrero 2025',
    'Marzo 2025',
    'Abril 2025',
    'Mayo 2025',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Comprobantes'),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: ListView.builder(
        itemCount: months.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlue[50],
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(months[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/month');
              },
            ),
          );
        },
      ),
    );
  }
}
