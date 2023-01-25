import 'package:flutter/material.dart';
import 'package:pesto/presentation/router.dart';
import 'package:pesto/theme/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final router = buildRouter();
  final theme = const BasilTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pesto',
      theme: theme.toThemeData(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
