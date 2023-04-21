import 'package:demo_sqlite/services/api_provider.dart';

import '../model/news_response.dart';

class ApiRepositry{

  final provider = ApiProvider();

  Future<Results> getNews() async{
    return provider.getNews();
  }
}

class NetworkError extends Error{}