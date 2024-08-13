import 'package:get/get.dart';
import 'package:larery/module/homepage/controller/c_homepage.dart';
import 'package:larery/module/homepage/ui/homepage.dart';

class Routes {
  static const String homepage = "/";

  static String getHomePageRoute() => homepage;

  static List<GetPage> routes = [
    GetPage(
        name: homepage,
        page: () => const HomePage(),
        binding: BindingsBuilder(() {
          Get.put(CHomePage());
        }),
        transition: Transition.fadeIn),
  ];
}
