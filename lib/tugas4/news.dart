import 'package:flutter/material.dart';
import 'package:mobile3_task/tugas4/api.dart';
import 'package:mobile3_task/tugas4/model.dart';

void main() {
  runApp(NewsApp());
}

//materialApp sama Scaffold
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Menu", //judul
      home: NewsView(), //memanggil tampilan
    );
  }
}

//membuat scaffold
class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  late Future<List<News>> _newsFuture;

  @override
  void initState() {
    super.initState();
    _newsFuture = ApiService().fetchNews();
    print(_newsFuture);
  }

  String formatDate(String dateString) {
    try {
      DateTime date = DateTime.parse(dateString);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return dateString;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Breaking News"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Popular"),

            FutureBuilder<List<News>>(
              future: _newsFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final articles = snapshot.data!;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final article = articles[index];
                        return Card(
                          child: ListTile(
                            leading: article.urlToImage != null 
                              ? Image.network(article.urlToImage!)
                              : Icon(Icons.image_not_supported),
                            title: Text(article.title ?? ''),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text((article.source ?? '') + ' - ' + (article.author ?? 'No author')),
                                Text(
                                  formatDate(article.publishedAt.toString())
                                ),
                                Text(''),
                                Text(
                                  article.description ?? 'No description',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return Text("No Data");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}