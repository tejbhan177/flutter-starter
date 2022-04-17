import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../core/localization/localization.dart';

class ConfirmDialog extends StatelessWidget {
  final VoidCallback onDenied;
  final VoidCallback onConfirmed;
  final String title;
  final String description;
  final String? buttonTitle;

  const ConfirmDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.onDenied,
    required this.onConfirmed,
    this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return WillPopScope(
      onWillPop: () async {
        onDenied();
        return false;
      },
      child: PlatformAlertDialog(
        title: Text(title),
        content: Text(description),
        actions: <Widget>[
          PlatformDialogAction(
            child: Text(local.buttonCancel!),
            onPressed: () {
              onDenied();
            },
          ),
          PlatformDialogAction(
            cupertino: (_, __) =>
                CupertinoDialogActionData(isDestructiveAction: true),
            child: Text(buttonTitle ?? local.buttonConfirm!),
            onPressed: () {
              onConfirmed();
            },
          ),
        ],
      ),
    );
  }
}
