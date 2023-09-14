import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  String imageurl="https://images.unsplash.com/photo-1694588784083-3dc3cf9e3745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:
                  Radius.circular(15)
                  ),
                  child:Container(
                    child: Image.network(imageurl, width: double.infinity, height: 400,fit: BoxFit.cover,
                    ),
                  ),
                ),

                  Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(Icons.more_vert,color: Colors.white,)),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
                ]
              ),
              SizedBox(height: 25),
              Container(
              margin: EdgeInsets.only(left: 10)
              ,child:Text('Nusa Penida',style: TextStyle(
              fontSize: 18
              ,
                fontWeight: FontWeight.bold,
              ),)),
              SizedBox(height: 25),
              Container(
                  margin: EdgeInsets.only(left: 10)
                  ,child: Text('Nusa Penida Nusa Penida Nusa Penida Nusa Penida'),),

              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.only(left: 10)
                ,child: Text('Picture',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),),
              SizedBox(height: 5),


              Row(
                children: [

                  Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Image.network(imageurl, width: 85, height: 70,fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.network(imageurl, width: 85, height: 70,fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.network(imageurl, width: 85, height: 70,fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.network(imageurl, width: 85, height: 70,fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.network(imageurl, width: 85, height: 70,fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25), // Adjusted SizedBox to height

              Row(
              children: [
                SizedBox(width: 15),
                Text('More in Bali',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green
                ),),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios,color:Colors.green ,),
                SizedBox(width: 35),
                SizedBox(width: 35),



              ],
            ),

            ],
          ),
        ),
      ),


    );
  }
}



