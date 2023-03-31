import 'package:template/main.dart';
import 'package:template/src_exports.dart';

import '../module/auth/demo.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(name: Routes.ROOT, page: () => const Root()),
    GetPage(name: Routes.DEMO, page: () =>  Demo()),
  ];
}
