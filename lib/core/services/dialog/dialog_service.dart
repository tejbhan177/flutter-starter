import '../../../app/data/models/request/alert_request/alert_request.dart';
import '../../../app/data/models/response/alert_response/alert_response.dart';

abstract class DialogService {
  Future<AlertResponse> showDialog(AlertRequest? alertRequest);

  void completeDialog(AlertResponse response);
}
