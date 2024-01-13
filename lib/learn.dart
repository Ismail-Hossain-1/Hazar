

import 'package:flutter/material.dart';
//import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'Learn/holy_sites.dart';
import 'Learn/models/all.dart';
import 'Learn/planets.dart';
import 'learn.dart';
import 'test.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "First",
    home: Learn(),
  ));
}

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _HomeState();
}

class _HomeState extends State<Learn> {
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
              color: Colors.black,
              child: Center(
                child: InkWell(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=> Planets())
                      );
                    },
                    splashColor: Colors.black26,
                    hoverColor: Color(0xBBFCE3FF),
                    child: Ink.image(
                      image: AssetImage('assets/img/planets.png'),
                      height: MediaQuery.of(context).size.height-400,
                      width: MediaQuery.of(context).size.width-60,
                      fit: BoxFit.contain,
                      padding: EdgeInsets.all(8),
                      child: const Center(
                        child: Text(
                          "Learn about planets with Joy",
                          style: TextStyle(fontSize: 50,
                              fontWeight: FontWeight.w600,
                              color: Color(0xC2E8F5E8),
                          ),
                          textAlign: TextAlign.center,

                        ),

                      ),

                    )
                ),
              ),
            ),
            SizedBox(height: 40,),
            Material(
              borderRadius: BorderRadius.circular(30),
              //elevation: 8,
              child: Center(
                child: InkWell(
                    onTap:(){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context)=> Holy_sites())
                      );
                    },
                    splashColor: Colors.black26,
                    hoverColor: Color(0xBBFCE3FF),
                    child: Ink.image(
                      image: const AssetImage('assets/img/holy_sites.png'),
                      height: MediaQuery.of(context).size.height-400,
                      width: MediaQuery.of(context).size.width-60,
                      fit: BoxFit.contain,
                      padding: EdgeInsets.all(8),
                      child: const Center(
                        child: Text(
                          "Learn about Holy sites in Islam",
                          style: TextStyle(fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Color(0xDB6C5247),

                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
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



