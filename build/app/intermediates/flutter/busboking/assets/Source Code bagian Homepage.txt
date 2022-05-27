import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  final String username;

  const Homepage({required this.username}); 
  @override
  _HomepageState createState() => _HomepageState();

}



class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title:Center( 
          child:
          Text("Menu", style: TextStyle(fontSize: 20, color: Colors.white,),),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          
        ),
        body:
        
         ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/uc.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("UC", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/ytb.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("YouTube", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/play.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Play Store", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/camera.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Camera", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/wa.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("WhatsApp", style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/genshin.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Genshin Impact", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/gmail.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Gmail", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/honkai.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Honkai impact", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/jam.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Jam", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/kalender.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Kalender", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/kontak.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Kontak", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/maps.png",
                        width: 70,
                        height: 70,
                      ),
                      Text("Maps", style: TextStyle(color: Colors.white,),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(32, 255, 255, 255),
        );
  }
}