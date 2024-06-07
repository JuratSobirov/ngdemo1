import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
static const String id = "home_page";


  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

_openDetails1(){
  String userId = "202";
Navigator.of(context)
    .push(MaterialPageRoute(builder:(BuildContext context){
return DetailsPage(userId: userId);

}));
}
_openDetails2(){
Navigator.of(context).pushNamed(DetailsPage.id);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Navigation",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    body: Center(
      child: MaterialButton(
          color: Colors.blue,
          onPressed: (){
    _openDetails1();
          },
          child: Text(
          "Open Detail Page",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),

    ));
  }
}

