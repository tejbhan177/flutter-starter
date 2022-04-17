import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:starter/app/app.dart';
import 'locator.dart';
import 'logger.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    setupLogger();
    await setupLocator();
    runZoned(() => runApp(const App()));
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}
