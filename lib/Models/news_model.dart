class NewsModel{
List<dynamic> articles;
NewsModel({required this.articles});
  factory NewsModel.fromjson(Map<String,dynamic> json){
 List<dynamic>fullData;
fullData = json["articles"].map(
    (news){
          return{
            "title":news["title"],
            "description":news["description"],
            "urlToImage":news["urlToImage"],
          };
    }
).toList();
return NewsModel(articles: fullData);
  }
}