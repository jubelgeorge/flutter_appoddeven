import 'package:flutter/material.dart';

class EvenOdd extends StatefulWidget {
  @override
  _EvenOddState createState() => _EvenOddState();
}

class _EvenOddState extends State<EvenOdd> {
  TextEditingController numcontroller = TextEditingController();
  int _a;
  var _res = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          margin: EdgeInsets.all(30.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: numcontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter number:"),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          _a = int.parse(numcontroller.text);
                          if (_a % 2 == 0)
                            _res = "Even";
                          else
                            _res = "Odd";
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 50.0,
                          width: 500.0,
                          child: Center(
                              child: Text(
                            "CHECK",
                            style: TextStyle(fontSize: 30.0),
                          ))),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      color: Colors.grey,
                        height: 70.0,
                        width: 300.0,
                        child: Center(
                            child: Text("Result:" + _res,style: TextStyle(fontSize: 50.0),))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
