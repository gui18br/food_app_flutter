import 'package:food_app/pages/home/home_binding.dart';
import 'package:food_app/pages/home/home_view.dart';
import 'package:food_app/pages/root/root_binding.dart';
import 'package:food_app/pages/root/root_view.dart';
import 'package:food_app/routes/app_route_name.dart';
import 'package:get/get.dart';

class AppRoutePage {
  static final routes = <GetPage>[
    GetPage(
      name: AppRouteName.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouteName.root,
      page: () => RootView(),
      binding: RootBinding(),
    ),
  ];
}
