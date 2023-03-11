import 'package:http/http.dart' as http;
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
}