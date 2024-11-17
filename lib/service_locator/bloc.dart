import 'package:circuit_electricial_box/shared/bloc/app_config/app_config_bloc.dart';
import 'package:get_it/get_it.dart';

void registerBloc(GetIt getIt) {
  getIt.registerFactory(() => AppConfigBloc());
}
