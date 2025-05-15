import 'package:flutter/material.dart';

class ComprobanteDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle del Comprobante'),
        backgroundColor: Colors.green[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Colors.green[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Pago Luz - 03/05/2025'),
                subtitle: Text('Importe: \$4500\nMétodo: Mercado Pago'),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Icon(Icons.image, size: 100, color: Colors.grey),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saved');
                  },
                  child: Text('Guardar Comprobante'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
