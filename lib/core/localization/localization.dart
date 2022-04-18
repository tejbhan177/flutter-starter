import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../../app/data/values/strings.dart';
import '../../local_setup.dart';

class AppLocalizations {
  final Locale locale;
  late Map<String, String> _sentences;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);

  Future<bool> load() async {
    final path = 'assets/lang/${locale.languageCode}.json';
    final data = await rootBundle.loadString(path);
    final Map<String, dynamic> _result = json.decode(data);

    _sentences = <String, String>{};
    _result.forEach((String key, dynamic value) {
      _sentences[key] = value.toString();
    });

    return true;
  }

  String? translate(String? key) {
    return _sentences[key!];
  }

  // List of available local strings that the app can use
  //  - translated from the corresponding /assets/lang/<local>.json files
  String? get appTitle => translate(Strings.app_title);

  String? get splashViewTitle => translate(Strings.app_title);
  String? get splashViewText => translate(Strings.splash_view_text);

  String? get homeViewTitle => translate(Strings.home_view_title);
  String? get homeViewText => translate(Strings.home_view_title);

  String? get verifyOtpTitle => translate(Strings.verify_otp_title);
  String? get verifyOtpText => translate(Strings.verify_otp_text);

  String? get settingsViewTitle => translate(Strings.settings_view_title);
  String? get settingsViewPermissions =>
      translate(Strings.settings_view_permissions);
  String? get settingsViewPermissionsDesc =>
      translate(Strings.settings_view_permissions_desc);
  String? get settingsViewAppSettings =>
      translate(Strings.settings_view_app_settings);
  String? get settingsViewAppSettingsDesc =>
      translate(Strings.settings_view_app_settings_desc);
  String? get settingsViewNotifications =>
      translate(Strings.settings_view_notifications);
  String? get settingsViewNotificationsDesc =>
      translate(Strings.settings_view_notifications_desc);
  String? get settingsViewLocation =>
      translate(Strings.settings_view_location);
  String? get settingsViewSignOut => translate(Strings.settings_view_sign_out);
  String? get settingsViewSignOutDesc =>
      translate(Strings.settings_view_sign_out_desc);
  String? get settingsViewSnackBar =>
      translate(Strings.settings_view_snack_bar);
  String? get settingsViewSnackBarDesc =>
      translate(Strings.settings_view_snack_bar_desc);

  String? get loginViewTitle => translate(Strings.login_view_title);
  String? get loginButton => translate(Strings.login_button);

  String? get buttonCancel => translate(Strings.button_cancel);
  String? get buttonConfirm => translate(Strings.button_confirm);

  String? get emailHint => translate(Strings.email_hint);
  String? get phoneHint => translate(Strings.phone_hint);
  String? get passwordHint => translate(Strings.password_hint);

  // Validators
  String? get invalidEmail => translate(Strings.invalid_email);
  String? get invalidPhoneNumber => translate(Strings.invalid_phone_number);
  String? get invalidZipCode => translate(Strings.invalid_zip_code);
  String? get passwordEmpty => translate(Strings.password_empty);
  String? get passwordShort => translate(Strings.password_short);

  String? get snackbarMessage => translate(Strings.snackbar_message);
  String? get snackbarAction => translate(Strings.snackbar_action);
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocalCodes.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

class FallbackCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLocalCodes.contains(locale.languageCode);
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    return DefaultCupertinoLocalizations.load(locale);
  }

  @override
  bool shouldReload(FallbackCupertinoLocalizationsDelegate old) => false;
}
