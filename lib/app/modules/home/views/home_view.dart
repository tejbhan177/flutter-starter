import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/data/models/request/alert_request/confirm_alert_request.dart';
import 'package:starter/app/data/models/request/snack_bar_request/confirm_snack_bar_request.dart';
import 'package:starter/app/data/values/strings.dart';
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
      body: ListView(
        children: [
          Text(
            local.homeViewText!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
          TextButton(
              onPressed: () async {
                final alertRequest = ConfirmAlertRequest(
                  (r) => r
                    ..title = Strings.settings_view_sign_out
                    ..description = Strings.settings_view_sign_out_desc
                    ..buttonTitle = Strings.button_confirm,
                );
                dynamic dialogResult;
                await (controller.dialogService!
                    .showCustomDialog(alertRequest)
                    .then((value) => dialogResult = value));

                if (dialogResult.confirmed) {
                  controller.log.fine('User has signed out');
                }
              },
              child: const Text('Dialog')),
          TextButton(
              onPressed: () async {
                final request = ConfirmSnackBarRequest(
                  (r) => r
                    ..message = Strings.snackbar_message
                    ..onPressed = () {}
                    ..buttonText = Strings.snackbar_action,
                );
                await controller.snackBarService!.showSnackBar(request);
              },
              child: const Text('SnackBar'))
        ],
      ),
    );
  }
}
