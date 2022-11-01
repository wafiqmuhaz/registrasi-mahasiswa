// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_single_quotes, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
import 'package:xetia_boilerplate/src/ui/pages/home/lulusPage.dart';
// import 'package:xetia_boilerplate/src/core/extensions/country_extensions.dart';
// import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
// import 'package:xetia_boilerplate/src/models/image_generator.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class DonePage extends StatefulWidget {
  const DonePage({super.key});

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Daftar Kelulusan",
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 700,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ceklis.png",
                      ),
                      Text(
                        "Form kamu telah terkirim",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LulusPage()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60,
              color: context.isDarkTheme ? Colors.white : Colors.black,
              child: Center(
                child: Text(
                  "Daftar Kelulusan",
                  style: TextStyle(
                    color: context.isLightTheme ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
