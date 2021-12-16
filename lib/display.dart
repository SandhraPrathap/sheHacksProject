import 'package:flutter/material.dart';
import 'package:furnito/widgets/commentitem.dart';

class display extends StatelessWidget {
  const display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(3, 73, 73, 1),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: 20,),
                detail(
                    image: "image/dine.png",
                    heading: "Dining Table",
                    description: "gtrhtyjfyjjjjjjjgggggggghfd"),
              ],
            ),
          ),
        ));
  }
}
