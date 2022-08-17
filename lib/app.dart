import 'package:alsalam_landing/app_constants.dart';
import 'package:alsalam_landing/home.dart';
import 'package:alsalam_landing/i18n/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        localizationsDelegates: const [
          Translations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppConstants.appLanguages.map((lang) => Locale(lang)),
        home: const MyHomePage(),
      ),
    );
  }
}
