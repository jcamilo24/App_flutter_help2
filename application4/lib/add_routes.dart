import 'package:application4/pages/calendar_page.dart';
import 'package:application4/pages/checkbox.dart';
import 'package:application4/pages/cupertino_calendar.dart';
import 'package:application4/pages/keyboard_types_page.dart';
import 'package:application4/pages/radio_page.dart';
import 'package:application4/pages/slider_page.dart';
import 'package:application4/pages/text_field_page.dart';
import 'package:application4/routes.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
    Routes.keyboardTypes: (_) => const KeyBoardTypesPage(),
    Routes.checkbox: (_) => const CheckBoxPage(),
    Routes.radio: (_) => const RadioPage(),
    Routes.slider: (_) => const SliderPage(),
    Routes.calendar: (_) => const CalendarPage(),
    Routes.cupertinocalendarpage: (_) => const CupertinoCalendarPage(),
  };
}
