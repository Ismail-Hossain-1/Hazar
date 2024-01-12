import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'models/all.dart';
class Planets extends StatefulWidget {
  const Planets({super.key});

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
  State<Planets> createState() => _HomeState();
}

class _HomeState extends State<Planets> {



  @override
  Scaffold build(BuildContext context) {
    return Scaffold (

     // appBar: Sun.appBar,

      body: SafeArea(
        child: ListView(

          padding: const EdgeInsets.all(8),
          children:<Widget> [
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              //color: Colors.yellow,
              child:

              const ModelViewer(
                backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                src: "assets/solar/sun.glb",
                alt: 'A 3D model ',
                ar: true,
                autoRotate: true,
                iosSrc: "assets/solar/sun.glb",
                disableZoom: true,
              ),

            ),
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/sun.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Sun()),
                  );
                },
                icon: const Icon(
                  Icons.dataset_linked_rounded,
                  size: 40,
                  color: Color.fromRGBO(31, 241, 173, 1.0), ),
                label: const Text("Planets More about Sun",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            //CustomMultiChildLayout(delegate: children)
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              //color: Colors.yellow,
              child: const Expanded(
                child:ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/mercury.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/sun.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: false,
                ),
              ),
            ), //Mercury
            //Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/mercury.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Mercury()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Mercury",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              // color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/venus.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/venus.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ),    //Venus
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/venus.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Venus()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Venus",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              //color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/earth.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/earth.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ),  //Earth
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/earth.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style: Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Earth()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Earth",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              // color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/mars.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/mars.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ),    //Mars
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/mars.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Mars()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Mars",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              //color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/jupiter.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/jupiter.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ), //Jupiter
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/jupiter.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style: Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Jupiter()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Jupiter",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,

            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              // color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/saturn.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/saturn.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ), //Saturn
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/saturn.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Saturn()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Saturn",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              // color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/uranus.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/uranus.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                ),
              ),
            ),  //Uranus
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/uranus.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Uranus()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Uranus",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 30, ),),

              ),

            ),
            //Scroll Down
            Planets.scroll,
            Container(
              height:MediaQuery.of(context).size.height-400 ,
              width:MediaQuery.of(context).size.width-200,
              // color: Colors.yellow,
              child: const Expanded(
                child: ModelViewer(
                  backgroundColor: Color.fromARGB(0xFF, 0x7, 0x7, 0x7),
                  src: "assets/solar/neptune.glb",
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  iosSrc: "assets/solar/neptune.glb",
                  disableZoom: false,
                  // disablePan: false,
                  //cameraControls: true,
                  // onWebViewCreated: ,
                ),
              ),
            ), //Nuptune
            // Page Link
            Container(
              padding: EdgeInsets.all(30),
              height: 150,
              width:  MediaQuery.of(context).size.width-50,

              decoration:  BoxDecoration(
                border: Border.all(width: 10, color: Colors.black26),
                gradient: Planets.link_grd,
                image:const DecorationImage(
                  image: AssetImage("assets/img/neptune.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.7,
                ),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                    Radius.circular(40)),
              ),
              alignment: Alignment.center,
              child:  ElevatedButton.icon(
                style:  Planets.scroll_stl,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>  Neptune()),
                  );
                },
                icon : Planets.icn,
                label: const Text("Planets More about Neptune",
                  style: TextStyle(color: Color.fromARGB(
                      255, 232, 245, 232),
                    fontSize: 26, ),),

              ),

            ),
          ],

        ),
      ),

    );
  }
}

