// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_single_quotes, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
// import 'package:xetia_boilerplate/src/core/extensions/country_extensions.dart';
// import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
// import 'package:xetia_boilerplate/src/models/image_generator.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class LulusPage extends StatefulWidget {
  const LulusPage({super.key});

  @override
  State<LulusPage> createState() => _LulusPageState();
}

class _LulusPageState extends State<LulusPage> {
  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.woman_outlined),
                    title: Text('Widiyanti Alrosyidin'),
                    subtitle: Text(
                      'Dinyatakan = Lulus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.woman_outlined),
                    title: Text('Linda'),
                    subtitle: Text(
                      'Dinyatakan = Lulus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.man_outlined),
                    title: Text('Raihan Rabbani'),
                    subtitle: Text(
                      'Dinyatakan = Lulus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.woman_outlined),
                    title: Text('Nabilah Zulfaa Afifah'),
                    subtitle: Text(
                      'Dinyatakan = Lulus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.man_outlined),
                    title: Text('Wafiq Muhaz'),
                    subtitle: Text(
                      'Dinyatakan = Lulus',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.isDarkTheme
              ? themeModeSetting.lightMode()
              : themeModeSetting.darkMode();
        },
        tooltip: context.l10n.kIncrement,
        child: IconButton(
          icon: context.isDarkTheme
              ? const Icon(
                  Icons.dark_mode,
                )
              : const Icon(
                  Icons.light_mode,
                ),
          onPressed: () {
            context.isDarkTheme
                ? themeModeSetting.lightMode()
                : themeModeSetting.darkMode();
          },
        ),
      ),
    );
  }
}
