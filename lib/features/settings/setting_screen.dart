import 'package:circuit_electricial_box/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingScreenBody();
  }
}

class SettingScreenBody extends StatefulWidget {
  const SettingScreenBody({super.key});

  @override
  State<SettingScreenBody> createState() => _SettingScreenBodyState();
}

class _SettingScreenBodyState extends State<SettingScreenBody> {
  String _themeMode = 'System';
  bool _keepScreenOn = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.current.settings,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text(
              'Theme',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: colorScheme.primary),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildThemeButton(
                  'System', MingCuteIcons.mgc_settings_1_fill, 'System'),
              _buildThemeButton('Light', MingCuteIcons.mgc_light_fill, 'Light'),
              _buildThemeButton(
                  'Dark', MingCuteIcons.mgc_partly_cloud_night_fill, 'Dark'),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: ListTile(
              title: Text(
                'Keep Screen On',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: colorScheme.primary),
              ),
              subtitle: const Text('Do not turn off screen'),
              trailing: Switch(
                value: _keepScreenOn,
                onChanged: (bool value) {
                  setState(() {
                    _keepScreenOn = value;
                  });
                },
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Others',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: colorScheme.primary),
            ),
          ),
          _buildOtherSession()
        ],
      ),
    );
  }

  Widget _buildOtherSession() {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('About'),
            leading: const Icon(MingCuteIcons.mgc_information_fill),
            onTap: () => {},
          ),
          Divider(
            color: colorScheme.surface,
            thickness: 2.5,
          ),
          ListTile(
            title: const Text('Terms of Service'),
            leading: const Icon(MingCuteIcons.mgc_document_2_fill),
            onTap: () => {},
          ),
          Divider(
            color: colorScheme.surface,
            thickness: 2.5,
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            leading: const Icon(MingCuteIcons.mgc_shield_fill),
            onTap: () => {},
          ),
        ],
      ),
    );
  }

  Widget _buildThemeButton(String label, IconData icon, String theme) {
    final bool isSelected = _themeMode == theme;
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        backgroundColor: isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        foregroundColor: isSelected
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.onSecondary,
      ),
      onPressed: () {
        setState(() {
          _themeMode = theme;
        });
      },
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
