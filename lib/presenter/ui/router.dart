import 'package:auto_route/annotations.dart';
import 'package:vasscom_test_project/presenter/ui/page/dashboard_page.dart';
import 'package:vasscom_test_project/presenter/ui/page/login_page.dart';
import 'package:vasscom_test_project/presenter/ui/page/profile_page.dart';
import 'package:vasscom_test_project/presenter/ui/page/register_page.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(page: LoginPage, initial: true),
      AutoRoute(page: RegisterPage),
      AutoRoute(page: DashboardPage),
      AutoRoute(page: ProfilePage),
    ]
)
class $AppRouter {}