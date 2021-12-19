import 'package:flutter/material.dart';
import 'package:furnito/main.dart';
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
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                icon: Icon(Icons.chevron_left),
                iconSize: 40,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              detail(
                  image: "image/dine.png",
                  heading: "Dining Table",
                  description: '''jbknm mkljknlnl nknkl df'''),
              SizedBox(
                height: 20,
              ),
              detail(
                  image: "image/table.png",
                  heading: "IKEA Table",
                  description:
                      '''Lorem ipsum dolor sit amit'''),
                      SizedBox(
                height: 20,
              ),
              detail(
                  image: "image/table.png",
                  heading: "IKEA Table",
                  description:
                      '''Lorem ipsum dolor sit amit'''),
                      SizedBox(
                height: 20,
              ),
              detail(
                  image: "image/table.png",
                  heading: "IKEA Table",
                  description:
                      '''Lorem ipsum dolor sit amit''')
            ],
          ),
        ),
      ),
    );
  }
}
