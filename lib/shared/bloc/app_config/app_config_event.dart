part of 'app_config_bloc.dart';

sealed class AppConfigEvent {}

class AppRequestInitialise extends AppConfigEvent {}

class AnnounceShakeAction extends AppConfigEvent {}

class CancelFirstLaunch extends AppConfigEvent {}
