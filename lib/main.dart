import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteroddevenapp/views/evenodd.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Hello(),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/pic.jpg"
                  ),
                  fit: BoxFit.cover
                ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              height: MediaQuery.of(context).size.height,
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 130.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>EvenOdd()
                        ));

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                            child: Text(
                          "EvenOdd",
                          style: TextStyle(fontSize: 30.0),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
