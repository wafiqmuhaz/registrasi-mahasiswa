import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:model_factory/model_factory.dart';
import 'package:xetia_boilerplate/firebase_options.dart';
import 'package:xetia_boilerplate/flavor.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
import 'package:xetia_boilerplate/src/core/routes/routes.dart';
import 'package:xetia_boilerplate/src/ui/theme/dark_theme.dart';
import 'package:xetia_boilerplate/src/ui/theme/light_theme.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUrlStrategy(PathUrlStrategy());

  await Xetia.initializeApp(
    domain: kApiDomain,
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    supportedLocales: AppLocalizations.supportedLocales,
    errorHandlers: {
      FieldParseException: (err) => Text(
            (err as FieldParseException).innerException.toString(),
          ),
    },
    plugins: [
      XetiaWidgetsPlugin(
        progressBuilder: (context, value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // DONT REMOVE THIS LINE PACKAGE XETIA
    ],
    defaultCountryCode: 'JPN',
    defaultCurrencyCode: 'JPY',
    defaultLanguageCode: 'ja',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.scheduleFrameCallback((timeStamp) {
      js.context.callMethod('completeSplash');
    });
  }

  @override
  Widget build(BuildContext context) {
    return XetiaWeb(
      databaseVersion: 3,
      routes: routes,
      onGenerateTitle: (context) => context.l10n.kAppName,
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegate: const [
        AppLocalizations.delegate,
      ],
    );
  }
}
