import 'package:circuit_electricial_box/features/mainflow/navigation/bottom_navbar.dart';
import 'package:circuit_electricial_box/features/mainflow/navigation/navbar_cubit.dart';
import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:circuit_electricial_box/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MainFlowScreen extends StatelessWidget {
  final Widget child;

  const MainFlowScreen({super.key, required this.child});
  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => BottomNavCubit(),
    child: MainFlowScreenBody(child: child),
  );
}

class MainFlowScreenBody extends StatefulWidget {
  final Widget child;

  const MainFlowScreenBody({super.key, required this.child});

  @override
  State<MainFlowScreenBody> createState() => _MainFlowScreenBodyState();
}

class _MainFlowScreenBodyState extends State<MainFlowScreenBody> {

  void _onPageChanged(int page) {
    context.go(topLevelPages[page].route);
    BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(page);
  }

  final List<TopLevelPage> topLevelPages = [
    TopLevelPage(
        S.current.home,
        MingCuteIcons.mgc_home_1_line,
        homeRoute
    ),
    TopLevelPage(
        S.current.collection,
        MingCuteIcons.mgc_book_2_line,
        collectionRoute
    ),
    TopLevelPage(
        S.current.settings,
        MingCuteIcons.mgc_settings_1_line,
        settingsRoute
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavBar(
        children: topLevelPages
            .map((element) => BottomNavItem(icon: element.icon, label: element.title))
            .toList(),
        onPageChange: _onPageChanged,
        currentIndex: context.watch<BottomNavCubit>().state,
      ),
    );
  }
}

class TopLevelPage {
  TopLevelPage(this.title, this.icon, this.route);
  final String route;
  final String? title;
  final IconData icon;
}
