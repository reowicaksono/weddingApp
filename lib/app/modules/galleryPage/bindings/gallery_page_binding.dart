import 'package:get/get.dart';

import '../controllers/gallery_page_controller.dart';

class GalleryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GalleryPageController>(
      () => GalleryPageController(),
    );
  }
}
