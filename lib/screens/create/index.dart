

import 'package:flutter/material.dart';
import 'package:money_planner_app/screens/create/widgets/create.dart';
import './widgets/budgetList.dart';

//ignore: must_be_immutable
class Create extends StatelessWidget{

  List<dynamic> budgets;

  Create({Key?key,required this.budgets}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(children: [BudgetList(budgets:budgets),const CreateBudget()],
);
  }
 
}

