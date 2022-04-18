import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/modules/auth/login/controllers/auth_login_controller.dart';
import 'package:starter/widgets/buttons/primary_filled_button.dart';
import 'package:starter/widgets/text_field/custom_text_field.dart';
import '../../../../../core/localization/localization.dart';

class AuthLoginView extends GetView<AuthLoginController> {
  const AuthLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTextField(
                  wrapper: controller.mobileWrapper,
                  hintText: local!.phoneHint!,
                  maxLength: 10,
                  inputType: TextInputType.number,
                ),
                const SizedBox(height: 8.0),
                PrimaryFilledButton(
                  text: local.loginButton!,
                  onTap: controller.sendOTP,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
