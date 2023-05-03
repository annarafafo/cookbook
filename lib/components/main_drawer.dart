import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _makeitem(String label, IconData icon, Function() onTap) {
    return ListTile(
        leading: Icon(icon, size: 26),
        title: Text(
          label,
          style: TextStyle(
              fontFamily: GoogleFonts.robotoCondensed().fontFamily,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        onTap: onTap);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Let him COOK!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          _makeitem('Refeições', Icons.restaurant,
              () => Navigator.of(context).pushReplacementNamed(AppRoutes.home)),
          _makeitem(
            'Configurações',
            Icons.settings,
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.settings),
          ),
        ],
      ),
    );
  }
}
