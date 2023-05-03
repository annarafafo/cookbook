import 'package:flutter/material.dart';
import 'package:lethimcook/components/main_drawer.dart';

import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Settings settings;
  final void Function(Settings) setConfigurations;
  const SettingsScreen(
      {super.key, required this.settings, required this.setConfigurations});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;
  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  @override
  Widget build(BuildContext context) {
    Widget makeSetting(String title, String subtitle, bool switchValue,
        Function(bool) changeSwitch) {
      return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Switch.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            value: switchValue,
            onChanged: (value) {
              changeSwitch(value);
            }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(children: [
        makeSetting(
            'Sem Glúten',
            'Exibe refeições sem glúten',
            settings.isGlutenFree,
            (p0) => {
                  setState(() {
                    settings.isGlutenFree = p0;
                    widget.setConfigurations(settings);
                  })
                }),
        makeSetting(
            'Sem Lactose',
            'Exibe refeições sem lactose',
            settings.isLactoseFree,
            (p0) => {
                  setState(() {
                    settings.isLactoseFree = p0;
                    widget.setConfigurations(settings);
                  })
                }),
        makeSetting(
            'Vegana',
            'Exibe refeições veganas',
            settings.isVegan,
            (p0) => {
                  setState(() {
                    settings.isVegan = p0;
                    widget.setConfigurations(settings);
                  })
                }),
        makeSetting(
            'Vegetariana',
            'Exibe refeições vegetarianas',
            settings.isVegetarian,
            (p0) => {
                  setState(() {
                    settings.isVegetarian = p0;
                    widget.setConfigurations(settings);
                  })
                })
      ]),
    );
  }
}
