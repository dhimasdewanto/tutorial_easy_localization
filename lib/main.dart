import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('ar', 'SA'),
        Locale('en', 'US'),
        Locale('id', 'ID'),
      ],
      path: 'assets/translations',
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title'.tr(),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: MyHomePage(),
    );
  }
}
