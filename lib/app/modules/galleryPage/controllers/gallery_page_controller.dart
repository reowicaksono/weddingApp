
import 'package:get/get.dart';


class GalleryPageController extends GetxController {
  //TODO: Implement GalleryPageController
  int current = 0;

  void changePage(index){
    current = index;
    update();
  }


}
