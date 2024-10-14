import 'package:get/get.dart';
import 'package:larery/module/homepage/controller/c_challengepage.dart';
import 'package:larery/module/homepage/controller/c_homepage.dart';
import 'package:larery/module/homepage/ui/challengepage.dart';
import 'package:larery/module/homepage/ui/homepage.dart';

class Routes {
  static const String homepage = "/";
  static const String challengepage = "/challenge_page";

  static String getHomePageRoute() => homepage;
  static String getChallengePageRoute() => challengepage;

  static List<GetPage> routes = [
    GetPage(
        name: homepage,
        page: () => const HomePage(),
        binding: BindingsBuilder(() {
          Get.put(CHomePage());
        }),
        transition: Transition.fadeIn),
    GetPage(
        name: challengepage,
        page: () => const ChallengePage(),
        binding: BindingsBuilder(() {
          Get.put(CChallengePage());
        }),
        transition: Transition.fadeIn),
  ];
}
