import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapi_project/Providers/news_provider.dart';
import 'package:newsapi_project/Widgets/news_container.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Consumer<NewsProvider>(builder: (BuildContext context, value, Widget? child) {
        if(value.newsModel == null)
          {
            value.getNews();
            return Center(child: CircularProgressIndicator(),);
          }
        return  ListView.separated(itemBuilder: (context,index)=> NewsContainer(description:value.newsModel?.articles[index]['description'], image:value.newsModel?.articles[index]['urlToImage'] , title: value.newsModel?.articles[index]['title']), separatorBuilder: (context,index)=> SizedBox(height: 10,), itemCount:value.newsModel!.articles.length);
      },

    ),
    );
  }
}
