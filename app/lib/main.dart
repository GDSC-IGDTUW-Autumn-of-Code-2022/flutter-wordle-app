import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:wordle/ui/multiple_themes/multiple_themes_view.dart';
import 'package:wordle/ui/theme_setup.dart';

import 'package:wordle/wordle/views/wordle_screen.dart';

Future main() async {
  await ThemeManager.initialise();
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      themes: getThemes(),
      statusBarColorBuilder: (theme) => theme?.accentColor,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        title: "WORDLE",
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
        initialRoute: 'home',
        routes: {
          'home': (context) => const WordleScreen(),
          'settings': (context) => MultipleThemesView(),
        },
      ),
    );
  }
}
//'projects': (context) => projects_carousel(),