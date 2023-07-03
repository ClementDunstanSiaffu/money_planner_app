
import 'package:flutter/material.dart';
import 'package:money_planner_app/widgets/loading_indicator.dart';


class Helper{

  Widget loadingWidget (){

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
          child:const LoadingIndicator(loading:true,stokeWidth:1,),
    );
  }

}