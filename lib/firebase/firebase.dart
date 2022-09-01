import 'package:firebase_messaging/firebase_messaging.dart';

class FbMsg {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  FirebaseMessaging get instance {
    return _firebaseMessaging;
  }

  Future<String?> get token {
    return _firebaseMessaging.getToken();
  }

  void requestNotificationPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}
