import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: MyApp(),
));


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int flutterlevel =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title : Text('Mr.MohamadHosein ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 10,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState((){
              flutterlevel+=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800]
      ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mr-mohamadhosein.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),



            Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                )
            ),

            SizedBox(height: 10),
            Text(
                'Mr.MohamadHosein',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                )
            ),

            SizedBox(height: 10),
            Text(
              'current flutter level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
                '$flutterlevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30),

            Row(
              children: <Widget>[
                Icon(Icons.email,
                    color: Colors.grey[400]
                ),
                SizedBox(height: 10),
                Text(
                  'kmohamadhosein77@gmai.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],

            ),



          ],
        ),




      ),

    );
  }
}