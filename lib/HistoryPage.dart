import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left,size: 30,),
          onPressed: ()=>{
          Navigator.pop(context)
          },
        ),
      ),
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height /3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
          ),
          Container(
              height: MediaQuery.of(context).size.height /3,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              )
          ),
          Container(
              height: MediaQuery.of(context).size.height /5,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
          ),
        ],
      )
    );
  }
}
