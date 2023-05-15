import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vasscom_test_project/presenter/ui/kit/themes.dart';
import 'package:vasscom_test_project/presenter/ui/router.gr.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: UiKitTheme.lightTheme,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser()
    );
  }
}
