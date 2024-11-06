import 'package:dio/dio.dart';
import 'package:newsapi_project/Models/news_model.dart';

class NewsService{
  static Dio dio = Dio();
static Future<NewsModel>fetchData()async{
try{
  const url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
  Response response = await dio.get(url);
  return NewsModel.fromjson(response.data);
}
catch(error){
 throw error;
}
}
}