import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_e_commere_design/configurations/configurations.dart';
import 'package:flutter_app_e_commere_design/configurations/environments.dart';
import 'package:flutter_app_e_commere_design/main.dart';

/// mainApp
Future<void> mainApp(Environment environment) async {
  /// Initial Flutter's resource
  WidgetsFlutterBinding.ensureInitialized();

  /// Config environment
  Configurations().setConfigurationEnvironment(environment);

  /// Force app in PortraitUp mode
  await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp])
      .then((_) => runApp(MyApp(environment: environment)));
}