import '../../../app/data/models/request/snack_bar_request/snack_bar_request.dart';
import '../../../app/data/models/response/snack_bar_response/snack_bar_response.dart';

abstract class SnackBarService {
  Future<SnackBarResponse> showSnackBar(SnackBarRequest alertRequest);

  void completeSnackBar(SnackBarResponse response);
}
