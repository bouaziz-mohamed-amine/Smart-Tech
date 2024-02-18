import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Smart Tech"),
        backgroundColor: Colors.green.shade700,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Expanded(
                child: Container(
                  child: Row(
                    children: [
                    Expanded(child: Container(
                      height: double.infinity,
                      color: Colors.yellow,child: Center(child: Text("test"),),),),
                    Expanded(child: Container(
                      height: double.infinity,
                      color: Colors.blue,child: Center(child: Text("test")),))
                  ],),
                )),
            Expanded(child: Container(color: Colors.red,)),
            Expanded(child: Container(color: Colors.yellow,))
          ],
        ),
      ),
    );
}

}
