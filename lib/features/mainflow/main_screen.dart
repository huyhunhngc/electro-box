import 'package:circuit_electricial_box/features/collection/collection_screen.dart';
import 'package:circuit_electricial_box/features/home/home_screen.dart';
import 'package:circuit_electricial_box/features/mainflow/navigation/bottom_navbar.dart';
import 'package:circuit_electricial_box/features/mainflow/navigation/navbar_cubit.dart';
import 'package:circuit_electricial_box/features/settings/setting_screen.dart';
import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MainFlowScreen extends StatefulWidget {
  const MainFlowScreen({super.key});

  @override
  State<MainFlowScreen> createState() => _MainFlowScreenState();
}

class _MainFlowScreenState extends State<MainFlowScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(page);
  }

  final List<TopLevelPage> topLevelPages = [
    TopLevelPage(
        S.current.home, MingCuteIcons.mgc_home_1_line, const HomeScreen()),
    TopLevelPage(S.current.collection, MingCuteIcons.mgc_book_2_line,
        const CollectionScreen()),
    TopLevelPage(S.current.settings, MingCuteIcons.mgc_settings_1_line,
        const SettingScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        children: topLevelPages
            .map((element) => BottomNavItem(icon: element.icon))
            .toList(),
      ),
    );
  }
}

class TopLevelPage {
  TopLevelPage(this.title, this.icon, this.screen);

  TopLevelPage.optionMore({this.title, required this.icon});

  final String? title;
  final IconData icon;
  late final Widget screen;
}
