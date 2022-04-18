import 'package:get/get.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/core/storage/storage_utils.dart';
import '../../../../core/services/hardware_info/hardware_info_service.dart';
import '../../../../locator.dart';

class SplashController extends GetxController {
  final HardwareInfoService? hardwareInfoService =
      locator<HardwareInfoService>();

  @override
  void onInit() {
    super.onInit();
    handleStartUpLogic();
  }

  Future handleStartUpLogic() async {
    await Future.wait([
      hardwareInfoService!.init(),
    ]);

    _startOnboarding();
  }

  _startOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));

    if (Storage.isUserExists()) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.AUTH_LOGIN);
    }
  }
}
