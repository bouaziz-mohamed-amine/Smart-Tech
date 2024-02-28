import 'package:flutter/material.dart';
import 'package:smattech/HistoryPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var count;
  late bool notifications;
  late bool lights;


  @override
  void initState() {
    // TODO: implement initState
    count=0;
    notifications=true;
    lights=true;
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
          notifications==true ? IconButton(
            onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => History()
                ),
              )
            },
            icon: Icon(Icons.notifications_active),) : Icon(Icons.notifications_off_outlined)

        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width /30,
            ),
            Expanded(
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width /30 ,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width /20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *0.38,
                                height: MediaQuery.of(context).size.width *0.38,
                                decoration: BoxDecoration(
                                  color: lights? Colors.green.shade700 : Colors.grey.shade100,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  onPressed: ()=>{
                                    setState(() {
                                      lights=!lights;
                                    })
                                  },
                                  icon: Icon(
                                     Icons.lightbulb_outlined,
                                    color: lights? Colors.white:Colors.grey,
                                    size: 28,
                                  ),
                                ),
                              ),
                               lights? Text("All Lights On",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600

                                ),
                              ): Text("All Lights Off",
                                 style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w600

                                 ),
                               )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width /30 ,
                      ),
                      Expanded(
                          child: InkWell(
                            onTap: ()=>{
                              setState(() {
                                count--;
                              })
                            },
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
                                      child: Icon(Icons.ac_unit,color: Colors.white)
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height*0.01,
                                      bottom:MediaQuery.of(context).size.height*0.01,
                                    ),
                                    color: Colors.greenAccent,
                                    child: Text("Electricity  On/Off",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width /30 ,
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width /30,
            ),
            Expanded(
                child: Container(
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
                            child: IconButton(
                              onPressed: ()=>{
                              setState(() {
                              count++;
                              })
                              },
                              icon: Icon(Icons.ac_unit,color: Colors.white),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height*0.01,
                                bottom:MediaQuery.of(context).size.height*0.01,
                            ),
                            color: Colors.greenAccent,
                            child: Text("Weather "+37.toString(),
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
              Expanded(
                child: InkWell(
                  onTap: ()=>{
                  setState(() {
                  count--;
                  })
                  },
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
                            child: Icon(Icons.ac_unit,color: Colors.white)
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*0.01,
                            bottom:MediaQuery.of(context).size.height*0.01,
                          ),
                          color: Colors.greenAccent,
                          child: Text("window On/Off",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
                ],
              ),
            )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width /30,
            ),
            Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  width: MediaQuery.of(context).size.width *0.4,
                                  height: MediaQuery.of(context).size.width *0.4,
                                  child: IconButton(
                                      onPressed: ()=>{
                                        setState(() {
                                          count++;
                                        })
                                      },
                                      icon: Icon(Icons.add_a_photo_rounded,color: Colors.white,)),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10
                                  ),
                                  color: Colors.blue,
                                  child: Text("Everything off"),
                                ),
                              ],
                            ),
                          )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width /30 ,
                      ),
                      Expanded(
                          child: Container(
                            color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  width: MediaQuery.of(context).size.width *0.4,
                                  height: MediaQuery.of(context).size.width *0.4,
                                  child: IconButton(
                                      onPressed: ()=>{
                                        setState(() {
                                          count++;
                                        })
                                      },
                                      icon: Icon(Icons.add_a_photo_rounded,color: Colors.white,)),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10
                                  ),
                                  color: Colors.blue,
                                  child: Text("TV Time On/Off"),
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.width /30,
            ),
          ],
        ),
      ),
    );
}

}
