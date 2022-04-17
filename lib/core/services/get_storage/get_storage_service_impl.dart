import 'package:get_storage/get_storage.dart';
import 'package:starter/core/services/get_storage/get_storage_service.dart';

class GetStorageServiceImpl implements GetStorageService {
  @override
  Future<void> initGetStorage() async {
    await GetStorage.init();
  }

}