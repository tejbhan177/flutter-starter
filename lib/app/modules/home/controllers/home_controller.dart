import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:starter/core/services/dialog/dialog_service.dart';
import 'package:starter/core/services/snackbar/snack_bar_service.dart';
import 'package:starter/locator.dart';

class HomeController extends GetxController {
  final DialogService? dialogService = locator<DialogService>();
  final SnackBarService? snackBarService = locator<SnackBarService>();
  final log = Logger('SettingsViewModel');
}
