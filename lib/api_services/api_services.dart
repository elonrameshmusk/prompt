import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prompt/models/register_model.dart';
import 'constants.dart';
class ApiServices{
  Future<dynamic> testApi() async {
    try{
        var url = Uri.parse(ApiConstants().baseUrl + ApiConstants().test);
        print(url);
        var response = await http.get(url);
        return response.body;
    }catch(err){
      print('try');
      print(err);
      return 'try';
    }
  }
  Future<RegisterModel> register(String email, String password) async{
    final response = await http.post(
      Uri.parse(ApiConstants().baseUrl+ApiConstants().register),
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password
      })
    );
    if(response.statusCode==201){
      return RegisterModel.fromJson(jsonDecode(response.body));
    }else{
      print(response.statusCode);
      print(response.body);
      throw Exception('failed to create user');
    }
  }
}