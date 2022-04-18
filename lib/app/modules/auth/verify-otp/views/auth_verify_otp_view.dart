import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:starter/app/modules/auth/verify-otp/controllers/auth_verify_otp_controller.dart';
import 'package:starter/core/localization/localization.dart';

class AuthVerifyOtpView extends GetView<AuthVerifyOtpController> {
  const AuthVerifyOtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(local!.verifyOtpTitle!),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          local.verifyOtpText!,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
