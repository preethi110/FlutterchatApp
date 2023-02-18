import 'package:/flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chatapp/pages/home_page.dart';
import 'package:flutter_chatapp/shared/constants.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){

    await Firebase.initializeApp(

      options: FirebaseOptions(
         apiKey: Constants.apiKey,
         appId: Constants.appId, 
         messagingSenderId: Constants.messagingSenderId, 
         projectId: Constants.projectId));

  }
  else{
    await Firebase.initializeApp();

  }



 

  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    
  }
}
