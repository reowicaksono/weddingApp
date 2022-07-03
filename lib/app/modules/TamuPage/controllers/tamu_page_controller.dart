import 'package:get/get.dart';
import 'package:wedapp/app/data/model/TamuModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TamuPageController extends GetxController {
  //TODO: Implement TamuPageController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
      Future<List<TamuModel>> getAllTamu () async{
    Uri url = Uri.parse("http://careernetwork.ml/getTamu.php");
    var response = await http.get(url);
  
    List? data= (json.decode(response.body) as Map<String,dynamic>)["data"];


    if(data== null || data.isEmpty){
      return [];
    }else{
      
      return data.map((e) => TamuModel.fromJson(e)).toList();
    }

  }
}
