import 'package:bmi_calculator/app/modules/input_module/input_page.dart';
import 'package:bmi_calculator/app/modules/results_module/results_page.dart';
import 'package:bmi_calculator/app/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => InputPage()),
    GetPage(name: Routes.RESULTS, page: () => ResultsPage())
  ];
}