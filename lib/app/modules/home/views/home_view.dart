import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/modules/home/controllers/home_controller.dart';
import '../../../../core/localization/localization.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(local!.homeViewTitle!),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          local.homeViewText!,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
