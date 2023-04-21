import 'package:dio/dio.dart';

import '../model/news_response.dart';

class ApiProvider{

  final Dio dio = Dio();
  final String newsAPI = 'https://api.nytimes.com/svc/topstories/v2/home.json?api-key=Avje3ReMsrWI62lYgCAdr9Cggah9Yz5F';
  //final response = await dio.get('https://pub.dev');

  Future<Results> getNews() async {

    try{
      Response response = await dio.get(newsAPI);
      return Results.fromJson(response.data);

    }
    catch(e){
      print("error : $e");
    }


   /* Map<String, String> header = {
      //'Authorization': 'Bearer $accessToken'
    };*/

 /*   http.Response response = await http.get(
        Uri.parse(Apis.newsAPI),
        headers: header);
    printResponse(header, null, response);
    return response;*/
  }
}