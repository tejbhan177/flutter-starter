import 'package:starter/app/data/models/response/app_config_response.dart';
import 'package:starter/app/data/values/urls.dart';
import 'package:starter/core/base/base_reposiotry.dart';
import 'package:starter/core/storage/storage_utils.dart';
import '../../../core/helper/exception_handler.dart';

class ConfigRepository extends BaseRepositry {
  saveAppConfig() async {
    final response = await controller.get(path: URLs.appConfig);
    if (response is! APIException) {
      Storage.setAppConfig(AppConfigResponse.fromJson(response).data);
    }
  }
}
