
// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';

import '../../services/get.dart';

class HomeScreen extends StatefulWidget{

  dynamic contents = {};

  HomeScreen({Key?key,contents}):super(key:key);

  @override
  State<HomeScreen> createState()=>_HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{

  dynamic contents = {};

   @override
  void initState() {
    super.initState();
    if(widget.contents.isEmpty){
      getContents("Dar es salaam")
    .then((value) =>{
      setState((){
        contents = value;
      })
    })
    .catchError((err){

    });
    }else{
      contents = widget.contents;
    }
 
  }

  @override
  Widget build (BuildContext context){
    if (contents.isNotEmpty){
    return Container (
          alignment:Alignment.center,
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF005C97),
                Color(0xFF363795)
              ],
            )
          ),
          child:Container(
            decoration:const BoxDecoration(color:Colors.transparent),
            height:MediaQuery.of(context).size.height*0.5,
            width:MediaQuery.of(context).size.width,
            child:Column(
              children: [
                Container(
                  alignment:Alignment.center,
                 child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:const [
                Text(
                  'Hewa',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.circle,color:Colors.orange)
              ],
              
            )
                ),
              Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:const [
                Icon(Icons.location_on_outlined,color:Colors.orange),
                Text(
                  'Dar es salaam',
                  style: TextStyle(
                    fontSize:20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              alignment:Alignment.center,
              margin:const EdgeInsets.only(top:5),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  Text('${contents["main"]["temp"]}',style:const TextStyle(color:Colors.white,fontSize: 20),)
                ],
              ),
            ),
            Container(
              margin:const EdgeInsets.only(top:10),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  const Text("Feel like  ",style:TextStyle(color:Colors.white,fontSize: 20)),
                  Text('${contents["main"]["feels_like"]}',style:const TextStyle(color:Colors.orange,fontSize: 20))
                ],
              ),
            )
          ]
            ),
          ),
    );
    }
    return Container (
          alignment:Alignment.center,
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF005C97),
                Color(0xFF363795)
              ],
            )
          ),);
  }
}