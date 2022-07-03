import 'package:http/http.dart' as http;
import 'dart:convert';


void main() async{



  Uri url = Uri.parse("http://careernetwork.ml/getTamu.php");
  var response = await http.get(url);
  var data = json.decode(json.encode(response.body));
  print(data);
}