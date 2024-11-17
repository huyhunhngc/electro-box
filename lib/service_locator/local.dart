import 'package:get_it/get_it.dart';

import 'package:circuit_electricial_box/shared/data/app_settings.dart';

void registerLocal(GetIt getIt) {
  getIt.registerSingleton<AppSettings>(AppSettings.newInstance());
}
