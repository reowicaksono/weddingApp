import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wedapp/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.exit_to_app),
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hello Azizi',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Selamat Atas Pernikahannya',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Flexible(
                flex: 7,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.GALLERY_PAGE);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xff28EAE6)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.photo_library,
                                    color: Colors.white,
                                  ),
                                
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Gallery Pernikahan',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '3 Album',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A&R',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.TAMU_PAGE);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffD5B9FF)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Daftar Tamu',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '15 Tamu',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A&R',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    GestureDetector(
                                      onTap: () =>
                                          Get.toNamed(Routes.DETAIL_PAGE),
                                      child: ListTile(
                                        leading: Icon(Icons.woman),
                                        title: Text('Perempuan'),
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.man),
                                      title: Text('Pria'),
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffEDC9AA)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.celebration_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Detail Pengantin',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '2 Pengantin',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A&R',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.SCAN_PAGE),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xffFFADAE)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(CupertinoIcons.barcode,color: Colors.white,),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Scan QR',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Barcode Tamu',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 2,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'A&R',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ])),
            Center(
              child: Container(
                child: Icon(
                  CupertinoIcons.barcode_viewfinder,
                  size: 100,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Color.fromARGB(255, 21, 78, 201)),
                    child: ElevatedButton(onPressed: (){}, child: Text("Bayar", style: TextStyle(color: Colors.white,fontSize: 16),),),
              ),
            )
          ],
        ),
      )),
    );
  }
}
