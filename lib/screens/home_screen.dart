import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> months = [
    'Enero 2025',
    'Febrero 2025',
    'Marzo 2025',
    'Abril 2025',
    'Mayo 2025',
    'Junio 2025',
    'Julio 2025',
    'Agosto 2025',
    'Septiembre 2025',
    'Octubre 2025',
    'Noviembre 2025',
    'Diciembre 2025',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recibido!'),
        backgroundColor: Color(0xFF9EC1A3), // verde pastel
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: months.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xFFE8F6EF),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(
                months[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.folder, color: Color(0xFF9EC1A3)),
              trailing: Wrap(
                spacing: 12,
                children: [
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.purpleAccent),
                    onPressed: () {
                      // Aquí se implementará la lógica para compartir con la nube
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Compartiendo ${months[index]} con tu nube personal...',
                          ),
                        ),
                      );
                    },
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
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
