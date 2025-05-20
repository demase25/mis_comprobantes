import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/month_detail_screen.dart';
import 'screens/comprobante_detail_screen.dart';
import 'screens/saved_confirmation_screen.dart';

void main() {
  runApp(RecibidoApp());
}

class RecibidoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recibido!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF9EC1A3), // verde pastel
          secondary: Color(0xFFF2B5D4), // rosado pastel
        ),
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
