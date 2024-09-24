import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) async {
        return await showDialog(
          context: Get.context!,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text(title ?? ""),
            content: Text(body ?? ""),
            actions: const [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('Ok'),
                // onPressed: () async {
                //   Navigator.of(context, rootNavigator: true).pop();
                //   await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Screen(
                //         text: '',
                //       ),
                //     ),
                //   );
                // },
              )
            ],
          ),
        );
      },
    );

    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
}
