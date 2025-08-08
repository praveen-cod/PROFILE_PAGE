import 'package:flutter/material.dart';
import 'package:week2/Profile.dart';
import 'package:week2/posts.dart';
void main(){
  runApp(MainPage());
}
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>Profile_Page(),
        "/post":(context)=>Posts_inState()

      },
    );
  }
}