import 'package:circuit_electricial_box/service_locator/service_locator.dart';
import 'package:circuit_electricial_box/shared/data/app_settings.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

part 'app_config_event.dart';
part 'app_config_state.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  final AppSettings _appSettings;

  AppConfigBloc()
      : _appSettings = ServiceLocator.get<AppSettings>(),
        super(AppConfigInitial()) {
    on<AppRequestInitialise>(_initialise);

    on<AnnounceShakeAction>(
      (event, emit) {
        emit(ShakeDetected(DateTime.now().millisecondsSinceEpoch));
      },
    );

    on<CancelFirstLaunch>(_cancelFirstLaunch);
  }

  void _initialise(AppConfigEvent event, Emitter<AppConfigState> emit) async {
    // init Date formatting
    initializeDateFormatting();

    bool isAppLaunched = await _appSettings.isAppFirstLaunch();

    // inform UI
    emit(AppConfigInitialised(isFirstLaunch: isAppLaunched));
  }

  void _cancelFirstLaunch(
      AppConfigEvent event, Emitter<AppConfigState> emit) async {
    await _appSettings.registerAppLaunched();

    emit(AppFirstLaunchCleared());
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
