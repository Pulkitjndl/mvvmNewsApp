import 'package:flutter/material.dart';
import 'package:mvvmAPp/models/news_article.dart';
import 'package:mvvmAPp/screens/news_screen.dart';
import 'package:mvvmAPp/viewmodel/news_active_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xfffefdfd),
            appBarTheme: AppBarTheme(
              color: Color(0xfffefdfd),
              elevation: 0,
              textTheme: TextTheme(
                  title: TextStyle(
                color: Colors.black,
              )),
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
            )),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => NewsArticleListViewModel(),
            )
          ],
          child: NewsScreen(),
        ));
  }
}
