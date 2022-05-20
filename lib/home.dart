import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:network2/used.dart';
import 'about.dart';
import 'building/building_form.dart';
import 'building/floors_form.dart';
import 'building/room_form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
var _color = Color.fromRGBO(108, 99, 255, 1);
class _HomePageState extends State<HomePage> {
  var data=[
    "Building",
    "Floor",
    "Room",
    "About",
    "How Used"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          title: const Text("Choose one from the list below : building or floor or room"),
          backgroundColor:_color,
          elevation:0,
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child:Center(
                  child:Container(
                    height: height*0.5,
                    width: width*0.5,
                    child:GridView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                              if(data[index]=="Building"){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                     BuildingFrom()));
                              }else if(data[index]=="Room"){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                    RoomFrom()));
                              }else if(data[index]=="Floor"){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                    FloorFrom()));
                              }else if(data[index]=="About"){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                    About()));
                              }else if(data[index]=="How Used"){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                    Used()));
                              }
                          },
                          child:HoverContainer(
                            hoverColor: Colors.amber,
                            hoverTransform:Matrix4.rotationX(10),
                            height: 50,
                            child:Card(
                              color:_color,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/${index}.png",
                                    width: 60,
                                    height: 60,
                                  ),
                                  SizedBox(height:10,),
                                  Text(
                                    data[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),),
                                ],
                              ),
                            ),

                          ),
                        );
                      },
                      itemCount: data.length,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

/*

 */