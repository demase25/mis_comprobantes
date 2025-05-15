import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/month_detail_screen.dart';
import 'screens/comprobante_detail_screen.dart';
import 'screens/saved_confirmation_screen.dart';

void main() {
  runApp(MisComprobantesApp());
}

class MisComprobantesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mis Comprobantes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/month': (context) => MonthDetailScreen(),
        '/detail': (context) => ComprobanteDetailScreen(),
        '/saved': (context) => SavedConfirmationScreen(),
      },
    );
  }
}
