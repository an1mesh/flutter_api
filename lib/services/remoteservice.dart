import 'dart:convert';

import 'package:api_implimentation/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Article>> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse(
        'https://newsapi.org/v2/everything?q=apple&from=2023-01-31&to=2023-01-31&sortBy=popularity&apiKey=ed0230ac26874f549b360d3528ad5878');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final List<dynamic>? article = json['articles'] as List<dynamic>?;
      List<Article> articles = article != null
          ? article
              .map((dynamic i) => Article.fromJson(i as Map<String, dynamic>))
              .toList()
          : <Article>[];
      return articles;
    }
    return [];
  }
}
