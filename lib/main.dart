import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:circuit_electricial_box/route/app_route.dart';
import 'package:circuit_electricial_box/service_locator/service_locator.dart';
import 'package:circuit_electricial_box/shared/bloc/app_config/app_config_bloc.dart';
import 'package:circuit_electricial_box/style/theme.dart';
import 'package:circuit_electricial_box/utils/app_size_utils.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();
  await ServiceLocator.initialise();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AppConfigBloc>(
        create: (context) =>
            ServiceLocator.get<AppConfigBloc>()..add(AppRequestInitialise()))
  ], child: const _MyApp()));
}

class _MyApp extends StatefulWidget {
  const _MyApp({super.key});

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {}
  }

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRoute,
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: TextScaler.noScaling,
            ),
            child: LayoutBuilder(builder: (context, constraint) {
              return OrientationBuilder(builder: (context, orientation) {
                SizeUtils.initialise(context, constraint, orientation);
                return widget ?? const SizedBox();
              });
            }),
          );
        },
        theme: createLightTheme(lightColorScheme),
        darkTheme: createDarkTheme(darkColorScheme),
        themeMode: ThemeMode.system,
        scrollBehavior: const CupertinoScrollBehavior(),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          ...S.delegate.supportedLocales,
        ],
      );
    });
  }
}
