import 'dart:async';

import 'package:alsalam_landing/app.dart';
import 'package:alsalam_landing/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

registerLazySingleton() {
  sl.registerLazySingleton<AppProvider>(() => AppProvider());
}

void main() async {
  // catch errors
  await runZonedGuarded<Future<void>>(() async {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    };
    // make sure binding initialized before calling [runApp]
    WidgetsFlutterBinding.ensureInitialized();

    // Register Singleton Data
    registerLazySingleton();
    runApp(const MyApp());
  }, (e, s) {
    // implement error handling
  });
}
