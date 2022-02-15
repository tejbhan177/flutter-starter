import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetStorage();
  runApp(const App());
}

Future initGetStorage() async {
  await GetStorage.init();
}
