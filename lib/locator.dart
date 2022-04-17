import 'package:get_it/get_it.dart';
import 'package:starter/core/services/firebase/firebase_service_impl.dart';
import 'package:starter/core/services/get_storage/get_storage_service_impl.dart';
import 'core/services/connectivity/connectivity_service.dart';
import 'core/services/connectivity/connectivity_service_impl.dart';
import 'core/services/dialog/dialog_service.dart';
import 'core/services/dialog/dialog_service_impl.dart';
import 'core/services/hardware_info/hardware_info_service.dart';
import 'core/services/hardware_info/hardware_info_service_impl.dart';
import 'core/services/navigation/navigation_service.dart';
import 'core/services/navigation/navigation_service_impl.dart';
import 'core/services/snackbar/snack_bar_service.dart';
import 'core/services/snackbar/snack_bar_service_impl.dart';

GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///   - Sets up singletons that can be called from anywhere
/// in the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
Future<void> setupLocator() async {
  // Services
  locator.registerLazySingleton<NavigationService>(
    () => NavigationServiceImpl(),
  );
  locator.registerLazySingleton<HardwareInfoService>(
    () => HardwareInfoServiceImpl(),
  );
  locator.registerLazySingleton<ConnectivityService>(
    () => ConnectivityServiceImpl(),
  );
  locator.registerLazySingleton<DialogService>(() => DialogServiceImpl());
  locator.registerLazySingleton<SnackBarService>(() => SnackBarServiceImpl());

  await FirebaseServiceImpl().initFirebase();

  await GetStorageServiceImpl().initGetStorage();

}
