import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';
import 'common/constants.dart' as constants;
import 'common/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const GlobalEntryNotify());
}

class GlobalEntryNotify extends StatelessWidget {
  const GlobalEntryNotify({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: constants.appTitle,
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: Routes.routes,
      ),
    );
  }
}
