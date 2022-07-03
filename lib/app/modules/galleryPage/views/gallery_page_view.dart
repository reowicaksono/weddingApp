import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../controllers/gallery_page_controller.dart';

class GalleryPageView extends StatefulWidget {
  const GalleryPageView({ Key? key }) : super(key: key);

  @override
  _GalleryPageViewState createState() => _GalleryPageViewState();
}

class _GalleryPageViewState extends State<GalleryPageView> {
  CarouselController _carouselController = new CarouselController();
  int _current = 0;

  List<dynamic> _gallerys = [
    {
      'title': 'The Jungle',
      'image': 'https://ammora.co/wp-content/uploads/2017/12/prewedding-malang.jpg',
      'description': 'Hutan Pinus, Jawa Timur',
    },
    {
      'title': 'Beach',
      'image': 'https://www.hotelkristal.com/wp-content/uploads/sites/221/2021/11/konsep-prewedding-outdoor.jpg',
      'description': 'Pantai Putih, Jawa Timur',
    },
    {
      'title': 'Me & Azizi',
      'image': 'https://asset-a.grid.id/crop/0x0:0x0/700x0/photo/2021/06/27/superfadli-photo-2021_06_27_08_2-20210627073929.jpg',
      'description': 'Desa Gebang, Cirebon'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.network(_gallerys[_current]['image'], fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(1),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                      Colors.grey.shade50.withOpacity(0.0),
                    ]
                  )
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,

                items: _gallerys.map((gallery) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 320,
                                margin: EdgeInsets.only(top: 30),
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.network(gallery['image'], fit: BoxFit.cover),
                              ),
                              SizedBox(height: 20),
                              Text(gallery['title'], style: 
                                TextStyle(
                                  fontSize: 16.0, 
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              // rating
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.location),
                                  Container(
                                    child: Text(gallery['description'], style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey.shade600
                                    ), textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              AnimatedOpacity(
                                duration: Duration(milliseconds: 500),
                                opacity: _current == _gallerys.indexOf(gallery) ? 1.0 : 0.0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(Icons.star, color: Colors.yellow, size: 20,),
                                            SizedBox(width: 5),
                                            Text('4.5', style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey.shade600
                                            ),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(Icons.photo, color: Colors.grey.shade600, size: 20,),
                                            SizedBox(width: 5),
                                            Text('3', style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey.shade600
                                            ),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        child: Row(
                                          children: [
                                            Icon(Icons.play_circle_filled, color: Colors.grey.shade600, size: 20,),
                                            SizedBox(width: 5),
                                            Text('Watch', style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey.shade600
                                            ),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}