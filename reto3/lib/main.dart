import 'package:flutter/material.dart';
import 'package:reto3/breed_item/item.dart';
import 'package:reto3/wave_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: custom_appbar(),
          body: ListView(
            children: [
              breed_item(
                  "https://cdn.pixabay.com/photo/2018/05/07/10/48/husky-3380548_960_720.jpg",
                  "Malamute",
                  "Kiut :3"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2015/11/17/13/13/bulldog-1047518_960_720.jpg",
                  "Frenchie",
                  "Smol"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2016/02/19/15/46/labrador-retriever-1210559_960_720.jpg",
                  "Retriever",
                  "Good boii"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2021/08/18/22/42/australian-shepherd-6556697_960_720.jpg",
                  "Ausie",
                  "Beauty"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2016/01/29/20/54/st-bernard-1168663_960_720.jpg",
                  "San B",
                  "Big doggo"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2021/07/07/14/40/dog-6394502_960_720.jpg",
                  "Corgi :D",
                  "Crazy boi"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg",
                  "Bernés c:",
                  "Look that face :33"),
              breed_item(
                  "https://cdn.pixabay.com/photo/2017/08/22/23/45/husky-2671006_960_720.jpg",
                  "Husky",
                  "The prettiest"),
            ],
          ),
        ));
  }
}
