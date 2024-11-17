import 'package:shared_preferences/shared_preferences.dart';

abstract class AppSettings {
  AppSettings();

  factory AppSettings.newInstance() => _AppSettingsImpl();

  Future<bool> isAppFirstLaunch();

  Future<void> registerAppLaunched();
}

class _AppSettingsImpl extends AppSettings {
  final String _appLaunchKey = 'app_launch_key';

  @override
  Future<bool> isAppFirstLaunch() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    return sharedPreferences.getBool(_appLaunchKey) ?? true;
  }

  @override
  Future<void> registerAppLaunched() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.setBool(_appLaunchKey, false);
  }
}
