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
        backgroundColor: Color(0xFFF5C6D6), // rosa pastel
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: comprobantes.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xFFFFEEF2),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(Icons.receipt_long, color: Colors.pinkAccent),
              title: Text(
                comprobantes[index],
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
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
