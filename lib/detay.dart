import 'package:flutter/material.dart';


class Detay extends StatefulWidget {

  var imgPath;
  Detay({this.imgPath});
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(  image: AssetImage(widget.imgPath), fit: BoxFit.cover)
                )
            ),
          ),
         Positioned(
           left: 15,
           right: 15,
           bottom: 15,
           child: Material(
             borderRadius: BorderRadius.circular(10),
             elevation: 4,
             child: Container(
               height: 320,
               width: MediaQuery.of(context).size.width - 50,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
                     child:  Column(
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                          Padding(padding: const EdgeInsets.all(10.0),
                        child:Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(image: AssetImage("assets/images/dress.jpg"),fit: BoxFit.contain),
                          ),
                        )
           ),
                             Column(

                               children:   <Widget>[
                             Text(" Moda Tasarım Uygulaması ", style: TextStyle(fontSize:16,color: Colors.black, fontWeight: FontWeight.bold),),
                                 SizedBox(height: 5,),
                                 Text(" Eğlenceli ve Kolay", style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w500),),
                                 SizedBox(height: 10,),
                                 Container(
                                   height: 200,
                                   width: MediaQuery.of(context).size.width- 170 ,
                                   child:   Text(" Ulaşmak İsteyenler GitHup Hesabımdan Ulaşabilirler. ",
                                     style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),),
                                 ),
                               ],
                             ),
                           ],
                         ),
                                  Padding(padding: const EdgeInsets.only(left: 15, top: 10,bottom: 2),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[

                                      Text(" \$65000  ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),


                                      Container(
                                        margin: EdgeInsets.only(right: 20),
                                     child:   FloatingActionButton  (
                                       onPressed: (){},
                                       child: Icon(Icons.arrow_downward), backgroundColor: Colors.transparent, ),

                                      ),


                                    ],
                                  ),
                                  ),

           ],
            ),
             ),
           ),
         ),
        ],
      ),
    );
  }
}

