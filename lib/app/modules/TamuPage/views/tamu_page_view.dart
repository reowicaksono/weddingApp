import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wedapp/app/data/model/TamuModel.dart';

import '../controllers/tamu_page_controller.dart';

class TamuPageView extends GetView<TamuPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TamuPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: controller.getAllTamu(),
          builder: (context, AsyncSnapshot snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (!snapshot.hasData) {
                  return Text("data not found");
                }
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    TamuModel tamuModel = snapshot.data![index];
                    return ListTile(
                      onTap: () {
                        
                      },
                      title: Text("${tamuModel.nama}"),
                      subtitle: Text(
                          "${tamuModel.email}"),
                      leading: CircleAvatar(child: Text("1")),
                      trailing: Text("absc"),
                    );
                  });
          }
          )
      ),
    );
  }
}
