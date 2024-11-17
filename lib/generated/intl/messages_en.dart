// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(date, time) => "${date} at ${time}";

  static String m1(count) => "+${count}";

  static String m2(key) => "${Intl.select(key, {
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
          })}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accessYourDiariesAnywhere": MessageLookupByLibrary.simpleMessage(
            "Access your diaries anywhere"),
        "addText": MessageLookupByLibrary.simpleMessage("Add text"),
        "anonymous_profile": MessageLookupByLibrary.simpleMessage(
            "Anonymous Profile. Please login to use all features."),
        "appName": MessageLookupByLibrary.simpleMessage("Inner ME"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "captureMediaButton": MessageLookupByLibrary.simpleMessage(
            "Tap to take picture, hold to record video"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "collection": MessageLookupByLibrary.simpleMessage("Collection"),
        "continueAsGuest":
            MessageLookupByLibrary.simpleMessage("Continue as guest"),
        "continueWithApple":
            MessageLookupByLibrary.simpleMessage("Continue with Apple"),
        "continueWithEmail":
            MessageLookupByLibrary.simpleMessage("Continue with Email"),
        "continueWithFacebook":
            MessageLookupByLibrary.simpleMessage("Continue with Facebook"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("Continue with Google"),
        "diaryDateFormatter": m0,
        "enterPassword": MessageLookupByLibrary.simpleMessage("Enter password"),
        "enterYourEmail":
            MessageLookupByLibrary.simpleMessage("Enter your email"),
        "extraImageCount": m1,
        "flipCamera":
            MessageLookupByLibrary.simpleMessage("Tap to switch camera"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "getStartedText": MessageLookupByLibrary.simpleMessage("Get Started"),
        "holdToRecord": MessageLookupByLibrary.simpleMessage("Hold to record"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "keepAllYourDiariesPrivate": MessageLookupByLibrary.simpleMessage(
            "Keep all your diaries private"),
        "locationPermissionDeniedBottomSheetDescription":
            MessageLookupByLibrary.simpleMessage(
                "Location Permission is needed to use this app. Please allow Inner ME to access location in the next dialog"),
        "locationPermissionDeniedBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage(
                "Location Permission not granted"),
        "locationPermissionDialogAllowButton":
            MessageLookupByLibrary.simpleMessage("Allow"),
        "locationPermissionDialogContinueButton":
            MessageLookupByLibrary.simpleMessage(
                "Continue with default location"),
        "locationPermissionDialogMessage": MessageLookupByLibrary.simpleMessage(
            "Inner ME needs permission to access your location. Please go to Settings > Privacy > Location and enable."),
        "locationPermissionDialogOpenSettingsButton":
            MessageLookupByLibrary.simpleMessage("Go to Settings"),
        "locationPermissionDialogTitle":
            MessageLookupByLibrary.simpleMessage("Turn on your location"),
        "locationPopupTitle":
            MessageLookupByLibrary.simpleMessage("Turn on your location"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginWithEmail":
            MessageLookupByLibrary.simpleMessage("Login with email"),
        "mapType": MessageLookupByLibrary.simpleMessage("Map Type"),
        "mapTypeDefault": MessageLookupByLibrary.simpleMessage("Default"),
        "mapTypeSatellite": MessageLookupByLibrary.simpleMessage("Satellite"),
        "mapTypeTerrain": MessageLookupByLibrary.simpleMessage("Terrain"),
        "noConnectionMessage": MessageLookupByLibrary.simpleMessage(
            "Slow or no internet connections.\nPlease check your internet settings"),
        "noConnectionTitle": MessageLookupByLibrary.simpleMessage("Whoops!"),
        "noPost": MessageLookupByLibrary.simpleMessage("No Post"),
        "noPostHasBeenPostedYet": MessageLookupByLibrary.simpleMessage(
            "No posts have been posted yet"),
        "onboardingIntroduction": MessageLookupByLibrary.simpleMessage(
            "A private space where you can be yourself."),
        "openDeviceGallery":
            MessageLookupByLibrary.simpleMessage("Tap to open gallery album"),
        "orLoginWith": MessageLookupByLibrary.simpleMessage("or login with"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "pause": MessageLookupByLibrary.simpleMessage("Pause"),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "textEditorSemantic": m2,
        "toolbarMore": MessageLookupByLibrary.simpleMessage("More"),
        "unavailable":
            MessageLookupByLibrary.simpleMessage("Screen unavailable"),
        "unavailableScreenDesc": MessageLookupByLibrary.simpleMessage(
            "Sorry, this screen is still under construction. Please come back later."),
        "viewMore": MessageLookupByLibrary.simpleMessage("  …View more"),
        "welcomeText":
            MessageLookupByLibrary.simpleMessage("Welcome to InnerME 🙌"),
        "yourEmail": MessageLookupByLibrary.simpleMessage("Your email")
      };
}
