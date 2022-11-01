// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_single_quotes, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
// import 'package:xetia_boilerplate/src/core/extensions/country_extensions.dart';
// import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
// import 'package:xetia_boilerplate/src/models/image_generator.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

import 'syarat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

    return Scaffold(
      // appBar: AppBar(
      //   // centerTitle: true,
      //   // title: Text("Selamat Datang Calon Mahasiswa"),
      // ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 500,
            child: Image.asset(
              "assets/images/ospek_mahasiswa.jpg",
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Selamat Datang Calon Mahasiswa",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Apa itu Mahasiswa?",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Siswoyo (2007) juga mengemukakan definisi mahasiswa yakni individu yang sedang menuntut ilmu di tingkat perguruan tinggi, baik negeri maupun swasta, atau lembaga lain yang setingkat dengan perguruan tinggi.",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Mahasiswa biasanya dinilai memiliki tingkat intelektualitas yang tinggi, kecerdasan dalam berpikir, serta perencanaannya dalam bertindak. Maka dari itu, berpikir kritis dan bertindak secara cepat serta tepat menjadi sifat yang cenderung melekat pada diri setiap mahasiswa.",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Tugas dan Kewajiban Mahasiswa?",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Menurut Siallagan (2011), di lingkungan kampus, mahasiswa akan berperan sebagai masyarakat kampus yang mempunyai tugas utama berupa belajar, membaca buku yang relevan dengan materi perkuliahan, membuat makalah, presentasi, berdiskusi, hadir di sebuah seminar, dan kegiatan lain yang bercorak kekampuasan.",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Di samping itu, mahasiswa juga memiliki tugas lain yakni sebagai agen perubahan dan pengontrol sosial masyarakat. Nah, tugas inilah yang nantinya dapat menjadikan seorang mahasiswa sebagai harapan bangsa di masa depan kelak dengan mencari solusi dari berbagai masalah yang tengah dihadapi.",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Sudah siap untuk menjadi mahasiswa?",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Next, Ada syarat pendaftarannya nih kalau kamu mau memulai menjadi mahasiswa.",
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Persyaratan()),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 60,
              color: context.isDarkTheme ? Colors.white : Colors.black,
              child: Center(
                child: Text(
                  "Peryaratan Pendaftaran",
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
