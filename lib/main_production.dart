import 'package:flutter_app_e_commere_design/configurations/environments.dart';
import 'package:flutter_app_e_commere_design/main_app.dart';

/// Main for Production
Future<void> main() async {
  await mainApp(Environment.production);
}