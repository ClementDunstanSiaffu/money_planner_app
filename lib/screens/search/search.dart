
import 'package:flutter/material.dart';
import 'package:money_planner_app/services/get.dart';


class SearchScreen extends StatefulWidget{

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState()=>_SearchScreen();
}

class _SearchScreen extends State<SearchScreen>{

  dynamic contents = [];

  void onSearch(text)async {
    getContents(text)
    .then((value) =>{
      setState(()=>{
        contents = value
      })
    });
  }

 

  @override
  Widget build (BuildContext context){
    return Container(
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
            alignment:Alignment.center,
            height:MediaQuery.of(context).size.height,
            decoration:const BoxDecoration(color:Colors.transparent),
            width:MediaQuery.of(context).size.width*0.8,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                TextField(
                  
                      cursorColor: Colors.grey,
            decoration: InputDecoration(
              
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide: const BorderSide(color:Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10),
                borderSide: const BorderSide(color:Colors.grey),
              ),
              fillColor: Colors.transparent,
              hintText: "search item",
              hintStyle:const TextStyle(color:Colors.white),
              prefixIcon:IconButton(onPressed:()=>{}, icon:const Icon(Icons.search,color:Colors.grey,)) ,
            ),
            // controller:inputController,
            onChanged:(text)=>onSearch(text),
                ),
              
                GestureDetector(
                  child:  Container(
                    alignment:Alignment.center,
                    margin:const EdgeInsets.only(top:20),
                    height:50,
                    width:MediaQuery.of(context).size.width*0.3,
                  decoration:const BoxDecoration(color:Colors.orange),
                  child:const Text("Search",style:TextStyle(color:Colors.white),)
                  ),
                )
              ]),
          ),
    );
  }
}