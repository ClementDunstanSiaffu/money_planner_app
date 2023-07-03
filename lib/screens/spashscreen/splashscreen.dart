
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState()=>_SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void navigateToMainScreen(){
    Navigator.pushNamed(context, "/mainScreen");
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds:1500),navigateToMainScreen);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
          child: Center(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:const [
                Text(
                  'Hewa',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.circle,color:Colors.orange)
              ],
              
            )
            
           
          ),
        ),
      ),
    );
  }
}