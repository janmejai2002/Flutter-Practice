import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade500,
        body: SafeArea(
//          child: Row(
//            //mainAxisSize: MainAxisSize.min,
////            verticalDirection: VerticalDirection.down,
//            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            crossAxisAlignment: CrossAxisAlignment.end,
//            children: <Widget>[
//              Container(
//                height:100.0,
////                width: 100.0,
//                color: Colors.red,
//                child: Text('Container 1')
//                ),
////              SizedBox(height: 20.0), //gives spacing between our children
//              SizedBox(width: 20.0), //gives spacing between our children
//
//              Container(width: 100.0,
//                height: 100,
//                color:Colors.lightGreenAccent,
//                child: Text('Container 2')
//                ),
//              Container(width: 100.0,
//                height: 100,
//                color:Colors.lightBlueAccent,
//                child: Text('Container 3')
//
//              ),
//              //invisible container
////              Container(width: double.infinity,
////              height : 0.0)
//            ],
//          ),
//
//        child : Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Container(
//              width:100.0,
//              color: Colors.red,
//            ),
//
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 height:50.0,
//                 width:50.0,
//                 color: Colors.yellowAccent,
//               ),
//
//               Container(
//                   height: 50.0,
//                   width:50.0,
//                   color: Colors.green
//               )
//             ],
//           ),
//
//            Container(
//              width: 100.0,
//              color: Colors.blue,
//            )
//          ],
//        )

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.0,),
            CircleAvatar(radius: 80.0,
            backgroundImage: AssetImage('images/myphoto.jpg'),

            ),
            SizedBox(height:10.0),
            Text('Janmejai',
            style: TextStyle(
              fontFamily: 'Sora',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
            ),
            SizedBox(height: 5.0,),
            Text('PYTHON DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source-Sans-Pro',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade100,
              letterSpacing: 3.0,


            ),
            ),
            SizedBox(width:300.0,
              height:10.0,
              child: Divider(
              color:  Colors.greenAccent.shade100,

            ),),
            Card(
//                padding: EdgeInsets.all(5.0),
              elevation: 10.0,
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
//                The above ROW can be replaced by a list tile.
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade600,
                    size: 35.0,
                  ),
                  title: Text(
                      '+91-852-756-1880',
                      style: TextStyle(color: Colors.teal.shade900,
                          fontFamily: 'Lemonada',
                          fontSize: 17.0),),
                ),
              ),
            ),
            Card(
              shadowColor: Colors.tealAccent.shade50,
              elevation: 10.0,
//              padding: EdgeInsets.all(5.0),
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                    leading: Icon(
                  Icons.email,
                  size: 35.0,
                  color: Colors.teal.shade600),
                  title: Text(
                    'janmejai2002@gmail.com',
                    style: TextStyle(color: Colors.teal.shade900,
                        fontFamily: 'Lemonada',
                        fontSize: 17.0),
                  )
                ),
                ),
              ),
          ],
        )
        ),
      )
    );
  }
}

