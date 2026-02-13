function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var parseDotEnv = function (text) {
    var result = {};
    if (!text) {
      return result;
    }
    var lines = text.split(/\r?\n/);
    for (var i = 0; i < lines.length; i++) {
      var line = lines[i].trim();
      if (!line || line.charAt(0) === '#') {
        continue;
      }
      var eqIndex = line.indexOf('=');
      if (eqIndex === -1) {
        continue;
      }
      var key = line.substring(0, eqIndex).trim();
      var value = line.substring(eqIndex + 1).trim();
      if (value.length >= 2) {
        var quote = value.charAt(0);
        if ((quote === '"' || quote === '\'') && value.charAt(value.length - 1) === quote) {
          value = value.substring(1, value.length - 1);
        }
      }
      if (key) {
        result[key] = value;
      }
    }
    return result;
  };
  var loadDotEnv = function (path) {
    try {
      return parseDotEnv(karate.readAsString(path));
    } catch (e) {
      return {};
    }
  };
  var defaultEnv = loadDotEnv('classpath:.env');
  var scopedEnv = env ? loadDotEnv('classpath:.env.' + env) : {};
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  for (var key in defaultEnv) {
    config[key] = defaultEnv[key];
  }
  for (var scopedKey in scopedEnv) {
    config[scopedKey] = scopedEnv[scopedKey];
  }
  config.baseUrl = config.BASE_URL || 'https://petstore.swagger.io/';
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}