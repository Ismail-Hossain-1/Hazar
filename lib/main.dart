

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Test/quiz_screen.dart';
//import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'Learn/models/all.dart';
import 'learn.dart';
import 'test.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "First",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var link_grd=  LinearGradient(
  //   begin: Alignment.topRight,
  //   end: Alignment.bottomLeft,
  //   colors: [
  //     Colors.blue,
  //     Colors.greenAccent,
  //
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF494949),
     // appBar: Sun.appBar,

      body: SafeArea(
        child: ListView(

          padding: const EdgeInsets.all(8),
          children:<Widget> [
            Material(
              borderRadius: BorderRadius.circular(30),
              //elevation: 8,
              child: Center(
                child: InkWell(
                 onTap:(){
                   Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> Learn())
                   );
                 },
                   splashColor: Colors.black26,
                   hoverColor: Color(0xBBFCE3FF),
                 child: Ink.image(
                     image: AssetImage('assets/img/Learn.jpg'),
                     height: MediaQuery.of(context).size.height-400,
                     width: MediaQuery.of(context).size.width-60,
                     fit: BoxFit.contain,
                     padding: EdgeInsets.all(8),
                     child: const Center(
                       child: Text(
                         "Learn with Joy",
                         style: TextStyle(fontSize: 50,
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           backgroundColor: Color(0xC340A26C),

                         ),
                         textAlign: TextAlign.center,
                       ),
                     ),

                 )
           ),
              ),
            ),
           // Spacer(),
           SizedBox(height: 40,),
            Material(
              borderRadius: BorderRadius.circular(30),
              //elevation: 8,
              child: Center(
                child: InkWell(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=> QuizScreen())
                      );
                    },
                    splashColor: Colors.black26,
                    hoverColor: Color(0xBBFCE3FF),
                    child: Ink.image(
                      image: AssetImage('assets/img/test.png'),
                      height: MediaQuery.of(context).size.height-400,
                      width: MediaQuery.of(context).size.width-60,
                      fit: BoxFit.contain,
                      padding: EdgeInsets.all(8),
                      child: const Center(
                        child: Text(
                          "Test Yourself",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,//Color(0xff504747),
                              fontWeight: FontWeight.w600,
                              backgroundColor: Color(0xCA5A8CEF)
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                    )
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



