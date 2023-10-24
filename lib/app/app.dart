import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/app/app_vm.dart';
import 'package:flutter_web_and_app/core/base/base_widget.dart';
import 'package:flutter_web_and_app/core/res/theme.dart';
import 'package:flutter_web_and_app/route/route.dart';
import 'package:flutter_web_and_app/route/route.routes.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends BaseState<AppViewModel, MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      onGenerateRoute: onGenerateRoute,
      initialRoute: RouteMaps.homeRoute,
      locale: const Locale('tr'),
      darkTheme: AppTheme.theme(isDark: true),
      /* localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (
        locale,
        supportedLocales,
      ) {
        Intl.defaultLocale = locale?.languageCode;
        return locale;
      }, */
    );
  }
}
