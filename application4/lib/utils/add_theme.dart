import 'package:flutter/material.dart';

import 'material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    primarySwatch: generateMaterialColor(
      Color.fromARGB(255, 40, 18, 161),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 27, 156, 216),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Colors.amber,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.pinkAccent,
      ),
      checkColor: MaterialStateProperty.all(
        Colors.white,
      ),
      overlayColor: MaterialStateProperty.all(
        Colors.blueGrey.withOpacity(0.2),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(Colors.purple),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.amberAccent),
      trackColor: MaterialStateProperty.all(Colors.amberAccent),
    ),
    sliderTheme: SliderThemeData(
      trackHeight: 15,
      activeTrackColor: Colors.pinkAccent,
      thumbColor: Colors.pink,
      overlayColor: Colors.pink.withOpacity(0.1),
      valueIndicatorColor: Colors.redAccent,
      inactiveTrackColor: Colors.pink.withOpacity(0.3),
      inactiveTickMarkColor: Colors.white54,
      thumbShape: RoundSliderThumbShape(
        enabledThumbRadius: 15,
      ),
    ),
  );
}
