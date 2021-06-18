/// Define enviroment
enum Environment { development, staging, production }

/// Delopment enviroment
final Map<String, dynamic> devEnvironment = <String, dynamic>{
  'host': 'http://api-dev.com/api/',
  'env': 'DEVELOPMENT',
};

/// Staging enviroment
final Map<String, dynamic> stgEnvironment = <String, dynamic>{
  'host': 'http://api-stg.com/api/',
  'env': 'STAGING',
};

/// Production eveniroment
final Map<String, dynamic> prodEnvironment = <String, dynamic>{
  'host': 'http://api.com/api/',
  'env': 'PRODUCTION',
};