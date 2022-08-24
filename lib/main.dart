import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.amber]),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(color: Colors.black, width: 15)),
                child: Text(
                  "hello from first container",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.14a6e70d5ec5e453a5c6efcd6e96ac93?rik=ndz%2fUJP7OMj8Gw&pid=ImgRaw&r=0")),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)),
                width: 400,
                height: 200,
                child: Text(
                  "this container has a picture",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  child: Row(
                children: [
                  Container(
                    height: 100,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Text(
                      "1st container in row",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Text(
                      "2nd container in row",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
