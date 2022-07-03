import 'package:get/get.dart';

import '../modules/DetailPage/bindings/detail_page_binding.dart';
import '../modules/DetailPage/views/detail_page_view.dart';
import '../modules/ScanPage/bindings/scan_page_binding.dart';
import '../modules/ScanPage/views/scan_page_view.dart';
import '../modules/TamuPage/bindings/tamu_page_binding.dart';
import '../modules/TamuPage/views/tamu_page_view.dart';
import '../modules/galleryPage/bindings/gallery_page_binding.dart';
import '../modules/galleryPage/views/gallery_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GALLERY_PAGE,
      page: () => GalleryPageView(),
      binding: GalleryPageBinding(),
    ),
    GetPage(
      name: _Paths.TAMU_PAGE,
      page: () => TamuPageView(),
      binding: TamuPageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PAGE,
      page: () => DetailPageView(),
      binding: DetailPageBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_PAGE,
      page: () => ScanPageView(),
      binding: ScanPageBinding(),
    ),
  ];
}
