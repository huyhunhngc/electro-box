// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Turn on your location`
  String get locationPermissionDialogTitle {
    return Intl.message(
      'Turn on your location',
      name: 'locationPermissionDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Inner ME needs permission to access your location. Please go to Settings > Privacy > Location and enable.`
  String get locationPermissionDialogMessage {
    return Intl.message(
      'Inner ME needs permission to access your location. Please go to Settings > Privacy > Location and enable.',
      name: 'locationPermissionDialogMessage',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get locationPermissionDialogAllowButton {
    return Intl.message(
      'Allow',
      name: 'locationPermissionDialogAllowButton',
      desc: '',
      args: [],
    );
  }

  /// `Continue with default location`
  String get locationPermissionDialogContinueButton {
    return Intl.message(
      'Continue with default location',
      name: 'locationPermissionDialogContinueButton',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings`
  String get locationPermissionDialogOpenSettingsButton {
    return Intl.message(
      'Go to Settings',
      name: 'locationPermissionDialogOpenSettingsButton',
      desc: '',
      args: [],
    );
  }

  /// `Anonymous Profile. Please login to use all features.`
  String get anonymous_profile {
    return Intl.message(
      'Anonymous Profile. Please login to use all features.',
      name: 'anonymous_profile',
      desc: '',
      args: [],
    );
  }

  /// `Whoops!`
  String get noConnectionTitle {
    return Intl.message(
      'Whoops!',
      name: 'noConnectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Slow or no internet connections.\nPlease check your internet settings`
  String get noConnectionMessage {
    return Intl.message(
      'Slow or no internet connections.\nPlease check your internet settings',
      name: 'noConnectionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Add text`
  String get addText {
    return Intl.message(
      'Add text',
      name: 'addText',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Turn on your location`
  String get locationPopupTitle {
    return Intl.message(
      'Turn on your location',
      name: 'locationPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Screen unavailable`
  String get unavailable {
    return Intl.message(
      'Screen unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, this screen is still under construction. Please come back later.`
  String get unavailableScreenDesc {
    return Intl.message(
      'Sorry, this screen is still under construction. Please come back later.',
      name: 'unavailableScreenDesc',
      desc: '',
      args: [],
    );
  }

  /// `Inner ME`
  String get appName {
    return Intl.message(
      'Inner ME',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Location Permission not granted`
  String get locationPermissionDeniedBottomSheetTitle {
    return Intl.message(
      'Location Permission not granted',
      name: 'locationPermissionDeniedBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Location Permission is needed to use this app. Please allow Inner ME to access location in the next dialog`
  String get locationPermissionDeniedBottomSheetDescription {
    return Intl.message(
      'Location Permission is needed to use this app. Please allow Inner ME to access location in the next dialog',
      name: 'locationPermissionDeniedBottomSheetDescription',
      desc: '',
      args: [],
    );
  }

  /// `{date} at {time}`
  String diaryDateFormatter(DateTime date, DateTime time) {
    final DateFormat dateDateFormat =
        DateFormat('dd MMM, yyyy', Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    final DateFormat timeDateFormat =
        DateFormat('HH:mm a', Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      '$dateString at $timeString',
      name: 'diaryDateFormatter',
      desc: '',
      args: [dateString, timeString],
    );
  }

  /// `+{count}`
  String extraImageCount(Object count) {
    return Intl.message(
      '+$count',
      name: 'extraImageCount',
      desc: '',
      args: [count],
    );
  }

  /// `{key, select, bold{Bold} italic{Italic} underline{Underline} highlight{Highlight} color{Font Color} bullet{Bullet List} numbered{Number List} strikethrough{Strikethrough} quote{Quote} alignLeft{Align Left} alignCenter{Align Center} alignRight{Align Right} alignJustify{Align Justify} other{Other}}`
  String textEditorSemantic(Object key) {
    return Intl.select(
      key,
      {
        'bold': 'Bold',
        'italic': 'Italic',
        'underline': 'Underline',
        'highlight': 'Highlight',
        'color': 'Font Color',
        'bullet': 'Bullet List',
        'numbered': 'Number List',
        'strikethrough': 'Strikethrough',
        'quote': 'Quote',
        'alignLeft': 'Align Left',
        'alignCenter': 'Align Center',
        'alignRight': 'Align Right',
        'alignJustify': 'Align Justify',
        'other': 'Other',
      },
      name: 'textEditorSemantic',
      desc: '',
      args: [key],
    );
  }

  /// `More`
  String get toolbarMore {
    return Intl.message(
      'More',
      name: 'toolbarMore',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to InnerME 🙌`
  String get welcomeText {
    return Intl.message(
      'Welcome to InnerME 🙌',
      name: 'welcomeText',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStartedText {
    return Intl.message(
      'Get Started',
      name: 'getStartedText',
      desc: '',
      args: [],
    );
  }

  /// `A private space where you can be yourself.`
  String get onboardingIntroduction {
    return Intl.message(
      'A private space where you can be yourself.',
      name: 'onboardingIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Email`
  String get continueWithEmail {
    return Intl.message(
      'Continue with Email',
      name: 'continueWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Keep all your diaries private`
  String get keepAllYourDiariesPrivate {
    return Intl.message(
      'Keep all your diaries private',
      name: 'keepAllYourDiariesPrivate',
      desc: '',
      args: [],
    );
  }

  /// `Access your diaries anywhere`
  String get accessYourDiariesAnywhere {
    return Intl.message(
      'Access your diaries anywhere',
      name: 'accessYourDiariesAnywhere',
      desc: '',
      args: [],
    );
  }

  /// `Continue as guest`
  String get continueAsGuest {
    return Intl.message(
      'Continue as guest',
      name: 'continueAsGuest',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get continueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'continueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continueWithApple {
    return Intl.message(
      'Continue with Apple',
      name: 'continueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `No Post`
  String get noPost {
    return Intl.message(
      'No Post',
      name: 'noPost',
      desc: '',
      args: [],
    );
  }

  /// `No posts have been posted yet`
  String get noPostHasBeenPostedYet {
    return Intl.message(
      'No posts have been posted yet',
      name: 'noPostHasBeenPostedYet',
      desc: '',
      args: [],
    );
  }

  /// `Login with email`
  String get loginWithEmail {
    return Intl.message(
      'Login with email',
      name: 'loginWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get yourEmail {
    return Intl.message(
      'Your email',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterYourEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enterPassword {
    return Intl.message(
      'Enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `or login with`
  String get orLoginWith {
    return Intl.message(
      'or login with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Hold to record`
  String get holdToRecord {
    return Intl.message(
      'Hold to record',
      name: 'holdToRecord',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Tap to take picture, hold to record video`
  String get captureMediaButton {
    return Intl.message(
      'Tap to take picture, hold to record video',
      name: 'captureMediaButton',
      desc: '',
      args: [],
    );
  }

  /// `Tap to switch camera`
  String get flipCamera {
    return Intl.message(
      'Tap to switch camera',
      name: 'flipCamera',
      desc: '',
      args: [],
    );
  }

  /// `Tap to open gallery album`
  String get openDeviceGallery {
    return Intl.message(
      'Tap to open gallery album',
      name: 'openDeviceGallery',
      desc: '',
      args: [],
    );
  }

  /// `Map Type`
  String get mapType {
    return Intl.message(
      'Map Type',
      name: 'mapType',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get mapTypeDefault {
    return Intl.message(
      'Default',
      name: 'mapTypeDefault',
      desc: '',
      args: [],
    );
  }

  /// `Satellite`
  String get mapTypeSatellite {
    return Intl.message(
      'Satellite',
      name: 'mapTypeSatellite',
      desc: '',
      args: [],
    );
  }

  /// `Terrain`
  String get mapTypeTerrain {
    return Intl.message(
      'Terrain',
      name: 'mapTypeTerrain',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `  …View more`
  String get viewMore {
    return Intl.message(
      '  …View more',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get collection {
    return Intl.message(
      'Collection',
      name: 'collection',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
