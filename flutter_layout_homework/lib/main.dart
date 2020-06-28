import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Homework',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Homework 2'),
        ),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(children: [
                    NameWidget("John McDonald", "Los Angles, CA"),
                    const SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.cyan,
                      child: Text("Follow"),
                    ),
                  ]),
                  // Image.asset(
                  //   'images/profile.jpg',
                  //   width: 120,
                  //   height: 140,
                  // ),
                  Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/profile.jpg')))),
                ],
              ),
              const SizedBox(height : 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NameWidget('34', 'Posts'),
                  NameWidget('1256', 'Followers')
                ],
              ),
              const SizedBox(height : 20),
              ImagesWidget(),
              IconWidget(),
              const SizedBox(height : 20),
              Divider(
                color: Colors.black,
              ),
              const SizedBox(height : 20),
              AboutWidget(),
            ]),
      ),
    );
  }
}

Column NameWidget(String name, String city) {
  return Column(
    children: [
      Text(
        name,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(city),
    ],
  );
}

Row ImagesWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        'images/mangojuice.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/prawn.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/pineapplejuice.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/strewberryjuice.jpg',
        width: 70,
        height: 70,
      ),
      Image.asset(
        'images/strewberryyogurt.png',
        width: 70,
        height: 70,
      ),
    ],
  );
}

Row IconWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(Icons.face),
      Icon(Icons.timer),
      Icon(Icons.toys),
      Icon(Icons.train),
      Icon(Icons.cake)
    ],
  );
}

// Column PostCommentWidget(String num, String post) {
//   return Column(
//     children: [
//       Text(
//         num,
//         style: TextStyle(fontSize: 20),
//       ),
//       Text(
//         post,
//         style: TextStyle(fontSize: 20),
//       ),
//     ],
//   );
// }

Column AboutWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Align(
      child: Text('About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
      ),
      alignment: Alignment.topLeft,
      ),
      const SizedBox(height: 20),
      Text(
          'Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.'),
    ],
  );
}
