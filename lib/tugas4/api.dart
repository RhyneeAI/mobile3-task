import 'dart:convert';
import 'package:mobile3_task/tugas4/model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const _apiKey = '32fe52a185354707bb5081fb06bd83e1';
  static const _url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=$_apiKey";

  Future<List<News>> fetchNews() async{
    try {
      final response = await http.get(Uri.parse(_url));
      print("Response status: ${response.statusCode}");
      
      if(response.statusCode == 200){
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> newsData = json["articles"];
        print("Number of articles: ${newsData.length}");
        print("First article: ${newsData[0]}");
        return newsData.map((json) => News.fromJson(json)).toList();
      }
      else{
        throw Exception("Failed to load news");
      }
    } catch (e) {
      throw Exception("Connection error");
    }
  }
}