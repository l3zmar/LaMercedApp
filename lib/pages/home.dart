import 'package:flutter/material.dart';
import 'package:hotel_real_merced/reservas.dart';
import 'package:hotel_real_merced/Services/widget_support.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _nameState();
}

class _nameState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    "images/fondo.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0, left: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadiusGeometry.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on, color: const Color.fromARGB(255, 255, 255, 255)),
                      SizedBox(width: 10.0),
                      Text("Granada, Nicaragua", style: Appwidget.whitetextstyle(20.0)
                      ),
                      SizedBox(height: 30.0,), 
                      Text("hey, [user]! dinos donde te gustaria estar", style: Appwidget.whitetextstyle(24.0),),
                      SizedBox(height: 20.0,), 
                      Container(
                        padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
                        margin: EdgeInsets.only(right:20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color:const Color.fromARGB(103, 255, 255, 255), borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none, prefixIcon: Icon(Icons.search, color: const Color.fromARGB(255, 0, 0, 0),), hintText: "buscar lugares...", hintStyle: Appwidget.whitetextstyle(20.0)
                          ),
                          
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lo mas relevante", style: Appwidget.headlinetextstyle(22.0,),
            )
           ),
           ListView(
            scrollDirection: Axis.horizontal,
            children: [
SizedBox(
  height: 200,
  child: ListView(
    children: [
      Column(children: [
        Image.asset("images/hotelmierda.jpg", 
        width: MediaQuery.of(context).size.width/1.5,),
      ])
    ]
  )
)
            ],),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(top:350,left:250),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Reservas(),));
                  },
                  label: Text("Reservar"),
                  icon: Icon(Icons.bed_outlined),
                  
                ),
              ),
             
              
              
            ),
          ],
        ),
      ),
    );
  }
}
