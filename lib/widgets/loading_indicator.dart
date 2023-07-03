

import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget{

  final bool loading;
  final Color? indicatorColor;
  final Color? indicatorBackgroundColor;
  final double stokeWidth;

  
  const LoadingIndicator({
    Key?key,
    required this.loading,
    this.indicatorColor= const Color(0xFF067f8f),
    this.indicatorBackgroundColor= Colors.white,
    this.stokeWidth = 2
  }):super(key:key);

  Widget showIndicator (){
    Widget defaultWidget = const SizedBox();
    if(loading){
      defaultWidget = CircularProgressIndicator(
        strokeWidth:stokeWidth,
        color:indicatorColor,
        backgroundColor:indicatorBackgroundColor,

      );
    }
    return defaultWidget;
  }

  @override
  Widget build (BuildContext context){
    return SizedBox(
      child:showIndicator() ,
    );
  }
}