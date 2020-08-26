import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkingHelper {
  String url;

  NetworkingHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
