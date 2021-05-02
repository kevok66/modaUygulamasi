import 'package:flutter/material.dart';

import 'detay.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  Anasayfa({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Anasayfa>  with SingleTickerProviderStateMixin{

  TabController tabController; //Heroya ve Inkwelle bağlı
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     tabController=TabController(length: 4, vsync: this); //initstate yaptıktan sonra dispose şart

  }
      @override
  void dispose() {
tabController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             bottomNavigationBar: Material(
               color: Colors.white,
               child: TabBar( controller: tabController,tabs: [
                 Tab(icon: Icon(Icons.mood_rounded , color: Colors.grey,size: 30,),),
                 Tab(icon: Icon(Icons.add_location_alt_outlined , color: Colors.grey,size: 30,),),
                 Tab(icon: Icon(Icons.add_ic_call, color: Colors.grey,size: 30,),),
                 Tab(icon: Icon(Icons.west , color: Colors.grey,size: 30,),),
               ]),
             ),


      appBar: AppBar(
        backgroundColor: Colors.transparent,

        title: Text(
            "Moda Uygulaması",
            style: TextStyle( color: Colors.black)
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.camera_alt), onPressed: () {})
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15),
        children: <Widget>[
          Container(
              color: Colors.blueGrey,
              height: 200,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listeElemani("assets/images/model1.jpeg",
                      "assets/images/chanellogo.jpg"),
                  SizedBox(width: 30,),
                  listeElemani("assets/images/model2.jpeg",
                      "assets/images/chloelogo.png"),
                  SizedBox(width: 30,),
                  listeElemani("assets/images/model3.jpeg",
                      "assets/images/louisvuitton.jpg"),
                  SizedBox(width: 30,),
                  listeElemani("assets/images/modelgrid1.jpeg",
                      "assets/images/chanellogo.jpg"),
                  SizedBox(width: 30,),
                  listeElemani("assets/images/modelgrid2.jpeg",
                      "assets/images/louisvuitton.jpg"),
                  SizedBox(width: 30,),
                  listeElemani("assets/images/modelgrid3.jpeg",
                      "assets/images/chloelogo.png"),

                ],
              ),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
               child: Material(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blueGrey,
                 child: Container(
                   height: 500,
                   width: double.infinity,
                   padding: EdgeInsets.all(10),

                child: Column(
                     children: <Widget>[
                       Row(
                       children:  <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(image: AssetImage("assets/images/model1.jpeg"),fit: BoxFit.cover),
                            ),
                          ),
                         SizedBox(width: 10,),
                          Container(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Daisy",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("34 mins ago",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),

                         ],
                       ),
                       SizedBox(height: 10),
                       Text("Tasarıma yönelik vizyonları illüstrasyon yoluyla ifade edebilecek sanatsal yeteneğe sahip olmak "
                           " Bilgisayar destekli tasarım programları ve grafik düzenleme yazılımlarını kullanabilmek," ,

                         style: TextStyle(color:Colors.white38),),

                       SizedBox(height: 10),
                       Row(
                           children:  <Widget>[
                        InkWell(
                         onTap:(){
                           Navigator.of(context).push(
                           MaterialPageRoute(builder:(context)=>Detay(imgPath:"assets/images/modelgrid1.jpeg")));

                         },
                          child:Hero(
                            tag: "assets/images/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50 ) / 2 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage("assets/images/modelgrid1.jpeg"), fit: BoxFit.cover),
                              ),
                            ),
                          )

               ) ,
                             SizedBox(width: 10),
                             Column(
                               children: <Widget>[
                                InkWell(
                                  onTap:(){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder:(context)=>Detay(imgPath:"assets/images/modelgrid2.jpeg")));

                                  },
                            child:Hero(
                              tag:"assets/images/modelgrid2.jpeg" ,

                                   child: Container(
                                     height: 100,
                                     width: (MediaQuery.of(context).size.width - 100 ) / 2 ,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(5),
                                       image: DecorationImage(image: AssetImage("assets/images/modelgrid2.jpeg"), fit: BoxFit.cover),

                                     ),
                                   ),
                                 ),
           ),
                                  SizedBox(height: 15,),
                            InkWell(
                              onTap:(){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder:(context)=>Detay(imgPath:"assets/images/modelgrid3.jpeg")));

                              },
                       child:Hero(
                 tag: "assets/images/modelgrid3.jpeg",

                                 child:Container(
                                   height: 100,
                                   width: (MediaQuery.of(context).size.width - 100 ) / 2 ,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     image: DecorationImage(image: AssetImage("assets/images/modelgrid3.jpeg"), fit: BoxFit.cover),      ),
                                 ),
                       ),
                            )
                              ],
                            )

    ],
                             ),


                       SizedBox(height: 10,),
                       Row(
                         children: <Widget>[
                           Container(
                             height: 35,
                             width: 75,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.brown.withOpacity(0.1)
                             ),
                             child: Text("  Beden Ölçüleri"),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             height: 35,
                             width: 75,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: Colors.brown.withOpacity(0.1)
                             ),
                             child: Text(" Mankene Ulaşım"),
                           ),

                         ],
                       ),
                       SizedBox(height: 10,),
                       Divider(),
                       SizedBox(height: 10,),

                       Row(
                         children: <Widget>[
                           Icon(Icons.reply_all_outlined,
                             color: Colors.brown.withOpacity(0.4),),
                          SizedBox(width: 5,),
                          Text("1.7K",style: TextStyle(fontSize: 14, color: Colors.white),),
                          SizedBox(width: 25,),
                           Icon(Icons.comment,
                             color: Colors.brown.withOpacity(0.4),),
                           SizedBox(width: 5,),
                           Text("125",style: TextStyle(fontSize: 14, color: Colors.white),
                           ),
                           SizedBox(width: (MediaQuery.of(context).size.width - 140 ) / 2 ,),
                           Icon(Icons.favorite,
                             color: Colors.red,),
                           SizedBox(width: 5,),
                           Text("120.000",style: TextStyle(fontSize: 14, color: Colors.white),),
                         ],
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

  Widget listeElemani(String imagePath, String logoPath) {

    return Column(
      children:<Widget >[

      Stack(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),

         Positioned(

        top:50,
         left:50,
     child:    Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(logoPath), fit: BoxFit.cover),

            ),
          )

         ),
        ],
      ),
          SizedBox(height: 10,),
        Container(
            height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white38,

          ),
          child: Center(
            child: Text("Follow ",style: TextStyle(fontSize: 15, color: Colors.black),)
          )
        )

],
    );
  }
}