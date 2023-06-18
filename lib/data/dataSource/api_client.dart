
import 'package:di_with_provider/data/models/base_model.dart';
import 'package:di_with_provider/data/utils/base_api_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClient extends BaseApiClient{
    String baseUrl = "${dotenv.env['PLACEHOLDER_API']}";
  final http.Client _httpClient;
   ApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();
  @override
  Future fetchData<T extends BaseModel>({required String subUrl, required T objectModel}) async {
 var requestHeaders = <String, String>{
      'Content-Type': 'application/json'
    };
     try {
      final response = await _httpClient.get(Uri.parse(baseUrl + subUrl),
          headers: requestHeaders);
      if (response.statusCode == 200) {
        final decodedBody = jsonDecode(response.body);
        final resultPosts =
            List<T>.from(decodedBody.map((e) => objectModel.fromJson(e)));
        return resultPosts;
      }
    } catch (error) {
      rethrow;
  }
  
  }
}