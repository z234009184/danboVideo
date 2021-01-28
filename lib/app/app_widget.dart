

import 'package:bot_toast/bot_toast.dart';
import 'package:danboVideo/utils/color_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';


class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'danboVideo',
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh', 'CN'),
        const Locale('en', 'US'),
      ],
      theme: ThemeData(
        primaryColor: ColorX.primary,
        accentColor: ColorX.primary,
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: ColorX.primary,
          scaffoldBackgroundColor: ColorX.whiteGrey,
        ),
        scaffoldBackgroundColor: ColorX.whiteGrey,

        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          brightness: Brightness.dark,
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 15),
          ),
        ),

        textTheme: TextTheme(caption: TextStyle(color: ColorX.grey),),
        // for others(Android, Fuchsia)
        cursorColor: ColorX.primary,
      ),
      themeMode: ThemeMode.system,
      initialRoute: Modular.initialRoute,
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}