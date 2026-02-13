import 'package:flutter/material.dart';

// Definición de colores para un tema de café
const Color cafePrimario = Color(0xFF6F4E37); // Un marrón café robusto
const Color cafeClaro = Color(0xFFA67B5B);
const Color acentoCrema = Color(0xFFFFFDD0);
const Color fondoClaro = Color(0xFFF5F5F5);
const Color textoSobreFondoOscuro = Colors.white;

void main() => runApp(const AppCaffenio());

class AppCaffenio extends StatelessWidget {
  const AppCaffenio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caffenio Montoya',
      theme: ThemeData(
        primaryColor: cafePrimario,
        scaffoldBackgroundColor: fondoClaro,
        colorScheme: ColorScheme.fromSeed(
          seedColor: cafePrimario,
          primary: cafePrimario,
          secondary: cafeClaro,
          background: fondoClaro,
          onPrimary: textoSobreFondoOscuro,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: cafePrimario,
          foregroundColor: textoSobreFondoOscuro, // Color para íconos y otros elementos
          elevation: 6,
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
            color: textoSobreFondoOscuro, // Asegura que el texto del título sea blanco
          ),
        ),
        useMaterial3: true,
      ),
      home: const BebidasFilaColumna(),
    );
  }
}

class BebidasFilaColumna extends StatelessWidget {
  const BebidasFilaColumna({super.key});

  // Widget reutilizable para cada ítem de bebida
  Widget _buildDrinkItem(String title, IconData icon, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.black.withOpacity(0.7)),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget para construir cada fila de íconos
  Widget _buildIconRow(
      String title1, IconData icon1, Color color1, String title2, IconData icon2, Color color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildDrinkItem(title1, icon1, color1),
        _buildDrinkItem(title2, icon2, color2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Caffenio Montoya"),
        centerTitle: true,
        actions: const [
          Icon(Icons.coffee_maker),
          SizedBox(width: 12),
          Icon(Icons.storefront),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Fila 1: Ámbar y Naranja suave
              _buildIconRow(
                "Calientes",
                Icons.local_cafe,
                const Color(0xFFFFCC80),
                "Helados",
                Icons.ac_unit,
                const Color(0xFFFFE082),
              ),
              const SizedBox(height: 16),
              // Fila 2: Terracota y Canela
              _buildIconRow(
                "Panadería",
                Icons.bakery_dining,
                const Color(0xFFFFAB91),
                "Granos",
                Icons.grain,
                const Color(0xFFD7CCC8),
              ),
              const SizedBox(height: 16),
              // Fila 3: Crema y Oro
              _buildIconRow(
                "Combos",
                Icons.fastfood,
                const Color(0xFFFFF59D),
                "Wallet",
                Icons.account_balance_wallet,
                const Color(0xFFCFD8DC),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
