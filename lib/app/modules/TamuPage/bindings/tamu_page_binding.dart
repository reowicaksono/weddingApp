import 'package:get/get.dart';

import '../controllers/tamu_page_controller.dart';

class TamuPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TamuPageController>(
      () => TamuPageController(),
    );
  }
}
