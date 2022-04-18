import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/modules/splash/controllers/splash_controller.dart';
import '../../../../core/localization/localization.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(local!.splashViewTitle!),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          local.splashViewText!,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
