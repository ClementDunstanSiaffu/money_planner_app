

import 'package:flutter/material.dart';

class CreateBudget extends StatelessWidget{

  const CreateBudget({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical:20),
      child: GestureDetector(
        onTap:()=>showBottomSheet(
          context:context, 
          builder:(BuildContext ctx){
            return Container();
          }
        ),
        child:Container(
          alignment:Alignment.center,
          height:40,
          width:MediaQuery.of(context).size.width*0.6,
          decoration:const BoxDecoration(color:Colors.blueAccent),
          child: const Text("Create"),
        ),
      ),
    );
  }
}