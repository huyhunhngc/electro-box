import 'package:circuit_electricial_box/service_locator/bloc.dart';
import 'package:circuit_electricial_box/service_locator/local.dart';
import 'package:circuit_electricial_box/service_locator/repository.dart';
import 'package:circuit_electricial_box/service_locator/service.dart';
import 'package:circuit_electricial_box/service_locator/usecase.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static GetIt get _instance => GetIt.I;

  ServiceLocator._();

  static Future<void> initialise() async {
    registerLocal(_instance);
    registerRepository(_instance);
    registerServices(_instance);
    registerUsecases(_instance);
    registerBloc(_instance);
  }

  static T get<T extends Object>() {
    return _instance.get<T>();
  }
}
