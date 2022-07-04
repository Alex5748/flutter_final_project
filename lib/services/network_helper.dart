import '../models/getModel.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  Future<List<Getapi>?> getAPIResponse() async {
    var response =
        await http.get(Uri.parse('http://mark.bslmeiyu.com/api/getplaces'));

    if (response.statusCode == 200) {
      var toList = getapiFromJson(response.body);
      return toList;
    } else {
      print('error');
    }
  }
}
