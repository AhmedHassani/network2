import 'package:flutter/material.dart';

import '../result.dart';


class BuildingFrom extends StatefulWidget {
  const BuildingFrom({Key? key}) : super(key: key);

  @override
  _BuildingFromState createState() => _BuildingFromState();
}
var _color = Color.fromRGBO(108, 99, 255, 1);
class _BuildingFromState extends State<BuildingFrom> {
  final List<String> floors = ["1", "2", "3","4", "5", "6","7", "8", "9","10"];
  final List<String> room = ["1", "2", "3","4", "5", "6","7", "8", "9","10"];
  final List<String> roomSize = ["5", "8", "15","20"];
  String selectedFloors = "1";
  String selectedRooms = "1";
  String selectedRoomsSize = "5";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Dimensions"),
        backgroundColor:_color,
        elevation:0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.grey.shade100,
              padding: EdgeInsets.all(5),
              width:width*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Numner Floors"),
                  DropdownButton<String>(
                    value: selectedFloors,
                    isExpanded: true,
                    icon: Icon(Icons.account_balance),
                    onChanged: (value){
                      setState(() {
                        selectedFloors = value!;
                      });
                    },
                    items: floors.map<DropdownMenuItem<String>>((value){
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.grey.shade100,
              padding: EdgeInsets.all(5),
              width:width*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Numner Rooms"),
                  DropdownButton<String>(
                    value: selectedRooms,
                    isExpanded: true,
                    icon: Icon(Icons.roofing_rounded),
                    onChanged: (value){
                      setState(() {
                        selectedRooms = value!;
                      });
                    },
                    items: room.map<DropdownMenuItem<String>>((value){
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.grey.shade100,
              padding: EdgeInsets.all(5),
              width:width*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Size of  Rooms"),
                  DropdownButton<String>(
                    value: selectedRoomsSize,
                    isExpanded: true,
                    icon: Icon(Icons.format_size),
                    onChanged: (value){
                      setState(() {
                        selectedRoomsSize = value!;
                      });
                    },
                    items: roomSize.map<DropdownMenuItem<String>>((value){
                      return DropdownMenuItem(
                        child: Text(value+"M"),
                        value: value,
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Result(
                    type:"Building",
                    floors:selectedFloors,
                    room:selectedRooms,
                    size:selectedRoomsSize,
                )));
              },
              child:Container(
                color: _color,
                padding: const EdgeInsets.all(12.0),
                width:width*0.5,
                child: const Center(
                  child: Text(
                    "Finish And Show Result",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Result
/*
  DropdownButton<String>(
              value: selectedRooms,
              onChanged: (value){
                setState(() {
                  selectedRooms = value!;
                });
              },
              items: room.map<DropdownMenuItem<String>>((value){
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
 */
