
import 'package:flutter/material.dart';
import 'package:money_planner_app/helper/helper.dart';
import 'package:money_planner_app/screens/navigation/navigation.dart';
import 'package:money_planner_app/screens/search/search.dart';
import './services/get.dart';

import 'screens/home/home.dart';
import 'screens/spashscreen/splashscreen.dart';

void main() {
  runApp(const Init());
}

class Init extends StatelessWidget{

  const Init({super.key});

  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      title: "ecommerce app",
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      initialRoute:MainScreen.routeName,
      routes: {
        "/":(BuildContext context) => const SplashScreen(),
        "/mainScreen":(BuildContext context) =>const MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget{

  const MainScreen({Key?key}):super(key: key);

  static const routeName = "/";

  @override  
  State<MainScreen> createState ()=>_MainScreen();

}

class _MainScreen extends State<MainScreen>{

  int selectedIndex = 0;
  dynamic contents = {};

  static List<Widget> widgetOptions = <Widget>[
    const SearchScreen(),
    const NavigationScreen()
  ];
  
  @override
  void initState() {
    super.initState();
    getContents("Dar es salaam")
    .then((value) =>{
      setState((){
        contents = value;
      })
    })
    .catchError((err){

    });
  }
    
  void selectTab(int index){
    setState(() {
      selectedIndex = index;
    });
  }


   Widget getWidget (){
    Widget defaultWidget = const SizedBox();

    if (selectedIndex == 0){
      defaultWidget = HomeScreen(contents:contents);
    }else{
      if (selectedIndex < 2){
        Widget defaultWidget = widgetOptions.elementAt(selectedIndex-1);
      }
    }
    return defaultWidget;
  }


  @override
  Widget build(BuildContext context){
          return  Scaffold(
          body:Center(child:getWidget()),
          bottomNavigationBar:BottomNavigationBar(
            backgroundColor:const Color(0xFF363795),
            showSelectedLabels: false,
            showUnselectedLabels:false,
            iconSize:30,
            items:const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
              BottomNavigationBarItem(icon:Icon(Icons.search),label:"Profile"),
              BottomNavigationBarItem(icon:Icon(Icons.file_copy_outlined),label:"Orders"),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Color.fromARGB(255, 242, 140, 7),
            unselectedItemColor:Colors.white,
            onTap: selectTab,
          ),
          
        );
    
    }
  }


