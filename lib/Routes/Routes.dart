import 'package:auto_route/auto_route.dart';
import 'package:digital_gram/Drawer/drawerPage.dart';
import 'package:digital_gram/HomePage/HomePage.dart';
import 'package:digital_gram/LoginPage/LoginPage.dart';
import 'package:digital_gram/LoginPage/SignUp.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignUp),
    AutoRoute(page: drawerPage),
  ],
)
class $AppRouter {}
