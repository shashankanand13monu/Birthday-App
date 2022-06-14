import 'dart:io';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cord/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    doWhenWindowReady(() {
      appWindow.size = Size(487, 938);
      appWindow.title = 'Cord';
      
     
    });
  }

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  void dispose() {
    // super.dispose();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);  // to re-show bars

  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        
        scaffoldBackgroundColor: Colors.black,),

      home: HomeScreen(),

      
    );
  }
}