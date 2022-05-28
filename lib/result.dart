import 'package:flutter/material.dart';

import 'colors.dart';
import 'device_controller.dart';

class Result extends StatefulWidget {
  String type;
  String floors;
  String room;
  String size;

  Result({
    Key? key,
    required this.type,
    required this.floors,
    required this.room,
    required this.size,
  }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}


class _ResultState extends State<Result> {
  late DeviceController _deviceController;

  @override
  void initState() {
    _deviceController = DeviceController(
        int.parse(widget.room),
        int.parse(widget.floors),
        int.parse(widget.size),
        widget.type
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Final Result"),
        backgroundColor: color,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text('#The devices are described according to the inputs',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6,
            ),
          ),
          Container(
            width: width,
            child: DataTable(columns: const[
              DataColumn(
                label: Text(
                  '#', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text(
                    'Device', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text(
                    'Price', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text(
                    'Number', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text(
                    'Company', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text('Description',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ], rows:_deviceController.getDevices().map((e) =>  DataRow(cells: [
              DataCell(Text("${e.id}")),
              DataCell(Text("${e.device}")),
              DataCell(Text("${e.price}")),
              DataCell(Text('${e.number}')),
              DataCell(Text('${e.company}')),
              DataCell(Text('${e.description}')),
            ])).toList()
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text('#Dateils',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            _deviceController.floors!=0?Text('Each floor has 2 Switch of a type 32 port total is : ${_deviceController.floors*2}',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
            ):Container(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text('Each 2M  has 1 Pc  total is : ${_deviceController.numberPc}',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text(
              'Each device takes IP from band C for enough band for this number',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
            ),
          ),
          _deviceController.floors!=0?Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text('Each floor has 1 router : ${_deviceController.floors}',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
            ),
          ):Container(),
          _deviceController.numDevices>20?Padding(
            padding: EdgeInsets.all(8.0),
            child:
            Text(
              'Since the number of devices is ${_deviceController.numDevices}, this means that they must be connected to the server system',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyText1,
            ),
          ):Container(),
        ],
      ),
    );
  }


}

//Since the number of devices is 240, this means that they must be connected to the server system
