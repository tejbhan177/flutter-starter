import 'package:flutter/material.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:starter/app/app_binding.dart';
import 'package:starter/app/data/values/constants.dart';
import 'package:starter/app/data/values/env.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/app/theme/app_theme.dart';
import 'package:starter/core/localization/localization.dart';
import 'package:starter/core/managers/core_manager.dart';
import 'package:starter/local_setup.dart';
import 'package:starter/provider_setup.dart';
import 'package:starter/widgets/custom_error/custom_error.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: CoreManager(
        child: GetMaterialApp(
          builder: errorBuilder,
          title: Env.title,
          navigatorKey: GlobalKeys.navigationKey,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          initialRoute: Routes.SPLASH,
          getPages: AppPages.pages,
          defaultTransition: Transition.fade,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
          localeResolutionCallback: loadSupportedLocals,
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle!,
          initialBinding: AppBinding(),
        ),
      ),
    );
  }

  Widget errorBuilder(BuildContext context, Widget? widget) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      FirebaseCrashlytics.instance.recordError(
        errorDetails.exception,
        errorDetails.stack,
        reason: ErrorMessages.networkGeneral,
      );
      return CustomError(errorDetails: errorDetails);
    };
    return widget ?? Container();
  }
}
