import 'package:flutter_app_e_commere_design/configurations/environments.dart';

class Configurations {
  static String _host;
  static String _env;

  Future<void> setConfigurationEnvironment(Environment environment) async {
    switch (environment) {
      case Environment.development:
        {
          _setConfiguration(devEnvironment);
          break;
        }

      case Environment.production:
        {
          _setConfiguration(prodEnvironment);
          break;
        }

      case Environment.staging:
        {
          _setConfiguration(stgEnvironment);
          break;
        }
    }
  }

  void _setConfiguration(Map<String, dynamic> values) {
    _host = values['host'] as String;
    _env = values['env'] as String;
  }

  static String get host => _host;
  static String get env => _env;

  static int get timeout => 30000;
}