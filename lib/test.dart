import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'Learn/models/all.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  static var scroll =Container(
    height: 100,
    // width:  MediaQuery.of(context).size.width-50,
    // color: Colors.green,

    alignment: Alignment.center,
    decoration:  BoxDecoration(
      border: Border.all(width: 6, color: Colors.black45),
      borderRadius: const BorderRadius.all(
          Radius.circular(15)),
      gradient:const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.lime,
          Colors.tealAccent,
        ],
      ),

    ),
    child:  ElevatedButton.icon(

      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
            Color.fromARGB(30, 211, 161, 139)),

      ),
      onPressed: () {  },
      icon: const Icon(Icons.arrow_drop_down_circle_outlined, size: 23,),
      label: const Text("Scroll Down", style: TextStyle(fontSize: 20),),

    ),

  );
 static var link_grd=  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Colors.blue,
      Colors.greenAccent,

    ],
  );
 static var scroll_stl= const ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(
        50, 213, 210, 210)),

  );
  static var icn=const Icon(
    Icons.dataset_linked_rounded,
    size: 40,
    color: Color.fromRGBO(31, 241, 173, 1.0), );

  // static String sun='https://bn.wikipedia.org/wiki/%E0%A6%B8%E0%A7%82%E0%A6%B0%E0%A7%8D%E0%A6%AF';

  @override
  State<Test> createState() => _HomeState();
}

 class _HomeState extends State<Test> {



  @override
  Scaffold build(BuildContext context) {
    return const Scaffold (

     // appBar: Sun.appBar,

      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 50, 5, 80),

        


      ),

    );
  }
}

