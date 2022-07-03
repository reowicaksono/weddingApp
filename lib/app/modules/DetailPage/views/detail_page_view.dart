import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_page_controller.dart';

import 'package:lottie/lottie.dart';

class DetailPageView extends GetView<DetailPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Detail Pengantin'),
          leading: Text(""),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset("assets/image/azizi1.jpg",
                              fit: BoxFit.cover),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/image/azizi.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )),
              Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Azizi Shafa Asadel, 19',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Tangerang, Banten",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam euismod, nisi eu consectetur consectetur, nisl nisl consectetur nisl, eu consectetur nisl nisl euismod ',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 224, 146, 211),
                                  Color.fromARGB(255, 226, 100, 159)
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "You & Azizi Have \n80% of matching",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("show me",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white))),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                child: Lottie.asset("assets/lottie/wed.json"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(200, 255, 255, 255)
                          ),
                          child: Icon(Icons.chevron_left),
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 226, 100, 159)
                        ),
                        child: Icon(Icons.call,color: Colors.white,)
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(200, 255, 255, 255)
                        ),
                        child: Icon(Icons.favorite,color: Colors.red,)
                      ),
                    ]),
                  ))
            ],
          ),
        ));
  }
}
