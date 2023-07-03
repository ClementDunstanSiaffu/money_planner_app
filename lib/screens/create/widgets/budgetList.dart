

import 'package:flutter/material.dart';

//ignore: must_be_immutable
class BudgetList extends StatelessWidget{

  List<dynamic> budgets;

  BudgetList({Key?key,required this.budgets}):super(key: key);

  List<Widget> getChildrens(){
    List<Widget> defaultChildren = [];
    if (budgets.isNotEmpty){
      for (Map<String,dynamic> val in budgets){
        defaultChildren.add(
          Container(
            margin: const EdgeInsets.only(top:5),
            child:Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top:5),
                  child:Text(val["budgetName"]),
                ),
                Container(
                  margin: const EdgeInsets.only(top:5),
                  child:Text('${val["budgetPrice"]}'),
                )
              ]
            ),
          )
        );
      }
    }
    return defaultChildren;
  }

  @override
  Widget build(BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top:0),
      child:ListView(
        children:getChildrens(),
      ),
    );
  }
 
}

