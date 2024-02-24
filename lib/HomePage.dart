import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var count;

  @override
  void initState() {
    // TODO: implement initState
    count=0;
  }

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
                            width: 100,
                            height: 100,
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
                                  width: 100,
                                  height: 100,
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
            Expanded(
                child: Container(
              color: Colors.grey.shade300,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                    color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width *0.4,
                            height: MediaQuery.of(context).size.width *0.4,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: ()=>{
                                setState(() {
                                count++;
                                })
                                },
                                icon: Icon(Icons.ac_unit,color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height*0.01,
                                bottom:MediaQuery.of(context).size.height*0.01,
                            ),
                            color: Colors.greenAccent,
                            child: Text("sample container",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600

                            ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width /30 ,
                  ),
                  Expanded(child: Container(
                    child: Text(count.toString()),
                  ),
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
