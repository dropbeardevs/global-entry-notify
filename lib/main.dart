import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common/constants.dart' as constants;
import 'common/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const GlobalEntryNotify());
}

class GlobalEntryNotify extends StatelessWidget {
  const GlobalEntryNotify({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.appTitle,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
