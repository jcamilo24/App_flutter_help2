import 'package:application4/add_routes.dart';
import 'package:application4/utils/add_theme.dart';
import 'package:application4/utils/material_color_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*final focus = FocusScope.of(context);
        final focusedChild = focus.focusedChild;
        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }*/
        SystemChannels.textInput.invokeMapMethod('TextInput.hide');
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: getThemeData(context),
        home: const HomePage(),
        routes: appRoutes,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final keys = appRoutes.keys.toList();
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) {
          final routeName = keys[index];
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            title: Text(routeName),
          );
        },
        itemCount: keys.length,
      ),
    );
  }
}
