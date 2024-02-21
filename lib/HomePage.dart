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
        title: Text("Smart Tech",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.green.shade700,
        actions: [
          Icon(Icons.notifications_off_outlined),
          IconButton(
              onPressed: ()=>{},
              icon: Icon(Icons.notifications_active),)
        ],
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
                    Expanded(
                      child: Container(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: ()=>{
                                print("container 1")
                              },
                              icon: Icon(Icons.lightbulb_outlined,size: 45,),
                            ),
                          ),
                          Container(
                              height: 50,
                              child: Center(child: Text("sample container"))),
                        ],
                      ),
                    ),
                    ),
                      Expanded(
                        child: InkWell(
                          onTap: ()=>{
                            print("container 2")
                          },
                          child: Container(
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.lightbulb_outlined),
                                ),
                                Container(
                                    height: 50,
                                    child: Center(child: Text("with Inkwell"))),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],),
                )),
            Expanded(child:
            Container(
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.width/4,
                    color: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14,top: 20,bottom: 30),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Container(child: Text("test"),color: Colors.blue,),
                  ),
                ],
              ),
            )
            ),
            Expanded(child: Container(color: Colors.yellow,))
          ],
        ),
      ),
    );
}

}
