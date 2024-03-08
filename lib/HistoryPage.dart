import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  final List<Map<String, dynamic>> actions = <Map<String, dynamic>>[
    {'action': 'TV On', 'user': 'mohamed amin','date':'2024-03-03','icon':'tv-on'},
    {'action': 'Lights On', 'user': ' amin','date':'2024-03-03','icon':'light-on'},
    {'action': 'Window On', 'user': 'mohamed amin','date':'2024-03-03','icon':'window-on'},
    // '', 'Lights On', 'TV Off', "Window On"
  ];
  Icon getIcons(String icon){
    switch (icon){
      case 'tv-on':  return  Icon(Icons.tv);break;
      case 'light-on': return  Icon(Icons.lightbulb);break;
      case 'window-on':  return Icon(Icons.window);break;
      default:  return Icon(Icons.ac_unit_rounded) ;
    }
  }
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: actions.length,
            itemBuilder: (BuildContext context, int index)=>Card(
              child: ListTile(
                leading: getIcons(actions[index]['icon'].toString()),
                title: Text(actions[index]['action'].toString()),
                subtitle: Text(actions[index]['user']),
                trailing: Text(actions[index]['date']),
              ),
            ),),
        )
    );
  }
}