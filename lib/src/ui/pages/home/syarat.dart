// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_single_quotes, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
import 'package:xetia_boilerplate/src/ui/pages/home/form.dart';
// import 'package:xetia_boilerplate/src/core/extensions/country_extensions.dart';
// import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
// import 'package:xetia_boilerplate/src/models/image_generator.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class Persyaratan extends StatefulWidget {
  const Persyaratan({super.key});

  @override
  State<Persyaratan> createState() => _PersyaratanState();
}

class _PersyaratanState extends State<Persyaratan> {
  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Persyaratan Pendaftaran",
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dokumen Persyaratan Pendaftaran Mahasiswa Baru",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          "Adapun kelengkapan berkas yang harus dilengkapi sebagai syarat mendaftar sebagai mahasiswa di STT Pratama Adi adalah sebagai berikut",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "• Fotocopy Ijazah SMA 2 Lembar.",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "• Salinan Nilai SMA atau yang sederajat atau Surat Keterangan Hasil Ujian (SKHU) 2 Lembar",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "• Surat Undangan Mahasiswa Baru STTPA",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "• Mengisi Formulir Pendaftaran",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "• Pas Photo",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "• Foto copy Kartu Keluarga",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Sudah lengkap untuk persyaratannya?",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Selanjutnya silahkan untuk mengisi form yang telah disediakan",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
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
                MaterialPageRoute(builder: (context) => Formulir()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60,
              color: context.isDarkTheme ? Colors.white : Colors.black,
              child: Center(
                child: Text(
                  "Pengisian Form",
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
