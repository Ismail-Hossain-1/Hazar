import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'models/all.dart';
class Holy_sites extends StatefulWidget {
  const Holy_sites({super.key});

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
  State<Holy_sites> createState() => _HomeState();
}

class _HomeState extends State<Holy_sites> {


  @override
  Scaffold build(BuildContext context) {
    return Scaffold(

     // appBar: Sun.appBar,

      body: SafeArea(
        child: ListView(

          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 400,
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 200,
              //color: Colors.yellow,
              child:

              const ModelViewer(
                backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                src: "assets/islam/kaaba.glb",
                alt: 'A 3D model ',
                ar: true,
                autoRotate: true,
                iosSrc: "assets/islam/kaaba.glb",
                disableZoom: true,
              ),

            ),
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 50,

              decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Holy_sites.link_grd,
                image: const DecorationImage(
                  image: AssetImage("assets/img/holy_sites.png"),
                  fit: BoxFit.fitWidth,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                style: Holy_sites.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Sun()),
                  );
                },
                icon: const Icon(
                  Icons.dataset_linked_rounded,
                  size: 40,
                  color: Color.fromRGBO(31, 241, 173, 1.0),),
                label: const Text("Planets More about Holy Kaaba",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30,),),

              ),

            ),
            //CustomMultiChildLayout(delegate: children)
          ],
        ),
      ),
    );
  }
}