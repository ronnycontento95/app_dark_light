import 'package:app_dark_light/views/login_page.dart';
import 'package:flutter/material.dart';

import 'package:app_dark_light/utils/sizer/sizer_util.dart';
import 'package:app_dark_light/values/theme_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) =>  MaterialApp(
          theme: themeDataLight,
          darkTheme: themeDataDark,
          themeMode: themeMode,
          home: LoginPage(changeTheme),
          localizationsDelegates: [
            // delegate from flutter_localization
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Taller',

        ));
  }

  changeTheme(ThemeMode themeMode){
    setState(() {
      this.themeMode=themeMode;
    });
  }

}