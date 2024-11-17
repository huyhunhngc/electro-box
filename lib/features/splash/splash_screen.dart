import 'package:circuit_electricial_box/route/app_route.dart';
import 'package:circuit_electricial_box/shared/bloc/app_config/app_config_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppConfigBloc, AppConfigState>(
      listener: (context, state) {
        if (state is AppConfigInitialised) {
          if (state.isFirstLaunch) {
            GoRouter.of(context).replace(mainFlowSceen);
          } else {
            GoRouter.of(context).replace(mainFlowSceen);
          }
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
