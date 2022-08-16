import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:starter/core/constant/local_keys.dart';
import '../../../app/data/models/request/alert_request/alert_request.dart';
import '../../../app/data/models/request/alert_request/confirm_alert_request.dart';
import '../../../app/data/models/response/alert_response/alert_response.dart';
import '../../../app/data/models/response/alert_response/confirm_alert_response.dart';
import '../../../locator.dart';
import '../../localization/localization.dart';
import '../navigation/navigation_service.dart';
import 'dialog_service.dart';

/// A service that is responsible for returning future dialogs
class DialogServiceImpl implements DialogService {
  final _log = Logger('DialogServiceImpl');

  Completer<AlertResponse>? _dialogCompleter;

  @override
  Future<AlertResponse> showCustomDialog(AlertRequest? request) {
    _dialogCompleter = Completer<AlertResponse>();

    if (request is ConfirmAlertRequest) {
      _log.finer('showConfirmAlert');
      _showConfirmAlert(request);
    }

    return _dialogCompleter!.future;
  }

  @override
  void completeDialog(AlertResponse response) {
    locator<NavigationService>().pop();
    _dialogCompleter!.complete(response);
    _dialogCompleter = null;
  }

  Future<dynamic> _showConfirmAlert(ConfirmAlertRequest request) {
    final local = AppLocalizations.of(Get.overlayContext!);

    if (!Platform.isIOS) {
      return showDialog(
        context: Get.overlayContext!,
        builder: (context) => AlertDialog(
          title: Text(local!.translate(request.title)!),
          content: Text(local.translate(request.description)!),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                if (!_dialogCompleter!.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = false));
                }
              },
            ),
            TextButton(
              child: Text(
                local.translate(request.buttonTitle)!,
              ),
              onPressed: () {
                if (!_dialogCompleter!.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = true));
                }
              },
            ),
          ],
        ),
      );
    } else {
      return showCupertinoDialog(
        context: Get.overlayContext!,
        builder: (context) => CupertinoAlertDialog(
          title: Text(local!.translate(request.title)!),
          content: Text(local.translate(request.description)!),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(LocalKeys.button_cancel),
              onPressed: () {
                if (!_dialogCompleter!.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = false));
                }
              },
            ),
            CupertinoDialogAction(
              child: Text(local.translate(request.buttonTitle)!),
              onPressed: () {
                if (!_dialogCompleter!.isCompleted) {
                  completeDialog(
                      ConfirmAlertResponse((a) => a..confirmed = true));
                }
              },
            ),
          ],
        ),
      );
    }
  }
}
