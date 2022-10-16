import 'package:flutter/material.dart';

class AlertDialogSample extends StatelessWidget {
  const AlertDialogSample({Key? key, this.title, required this.message}) : super(key: key);

  final String? title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? 'メッセージ'),
      content: Text(message),
      actions: <Widget>[
        GestureDetector(
          child: const Text('閉じる'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}