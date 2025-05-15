import 'package:flutter/material.dart';

class MonthDetailScreen extends StatelessWidget {
  final List<String> comprobantes = [
    'Pago Luz - 03/05/2025',
    'Pago Agua - 04/05/2025',
    'Pago Internet - 05/05/2025',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mayo 2025'),
        backgroundColor: Colors.pink[100],
      ),
      body: ListView.builder(
        itemCount: comprobantes.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.pink[50],
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(comprobantes[index]),
              trailing: Icon(Icons.receipt),
              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },
            ),
          );
        },
      ),
    );
  }
}
