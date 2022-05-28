import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import 'colors.dart';


class Used extends StatelessWidget {
  const Used({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> role = [
      "You Should Select Login by username and password note (username,password generation by admin)",
      "select one from type Blading or home or Row",
      "On the page, choose the number of rooms and the area of ​​​​the building according to the building you need",
      "last page only show final results"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("How Used"),
        backgroundColor: color,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1400,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              const Text(""
                  "To use the application normally and without problems, follow the following steps",
                style:TextStyle(color: Colors.black54,fontSize: 16),
              ),
              const SizedBox(height: 10,),
              BulletedList(
                listItems: role,
                listOrder: ListOrder.ordered,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
