import 'package:flutter/material.dart';
import 'package:newsapi_project/Models/news_model.dart';
import 'package:newsapi_project/Services/news_service.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? newsModel;
  Future<void>getNews()async{
    newsModel = await NewsService.fetchData();
    notifyListeners();
  }
}