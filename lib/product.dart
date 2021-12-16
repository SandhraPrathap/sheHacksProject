import 'package:flutter/material.dart';
import 'package:furnito/home.dart';
import 'package:furnito/widgets/commentitem.dart';

class product extends StatefulWidget {
  @override
  _bedState createState() => _bedState();
}

class _bedState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => home(),
                ),
              );
            },
            icon: Icon(Icons.chevron_left),
            iconSize: 40,
            color: Color.fromRGBO(3, 73, 73, 1),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("image/table.png")),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "     IKEA Supreme Table",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "       Dinner Table",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
          ),
          Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*(3/4)),
            child: Text(
              "\$199",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * (1 / 7),
              width: MediaQuery.of(context).size.width * (2.5 / 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(239, 255, 239, 1),
              ),
              child: Center(
                child: Text(
                  '''Lorem ipsum dolor sit amit . aslkfjalsjflkajfdkjjasf
kajlfa dklfjd lkjsdf asdlkfjdf. 

Show More....
''',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*(1/10)),
            child: Text(
              "Comments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          comment(
              rating: 3,
              title: "Good Table",
              content:
                  "Good quality table very useful for one person. Can be used for lots of work."),
          SizedBox(
            height: 10,
          ),
          comment(
              rating: 4,
              title: "Awesome product",
              content:
                  "I love it alreadyyyy....It's sooooooooo gooooooooooooooooood")
        ],
      ),
    );
  }
}
