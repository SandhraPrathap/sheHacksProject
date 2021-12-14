import 'package:flutter/widgets.dart';

class comment extends StatelessWidget {
  final int rating;
  final String title;
  final String content;
  const comment(
      {Key? key,
      required this.rating,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * (0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(
                rating,
                (index) {
                  return Image.asset("image/star.png");
                },
              ),
            ),
            Text(
              content,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}

class detail extends StatelessWidget {
  final String image;
  final String heading;
  final String description;

  const detail(
      {Key? key,
      required this.image,
      required this.heading,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      color: Color.fromRGBO(3, 73, 73, 1),
      child: Row(
        children: [
          Container(child: Image.asset("")),
          Column(
            children: [
              Text(""),
              Text(""),
            ],
          )
        ],
      ),
    );
  }
}
