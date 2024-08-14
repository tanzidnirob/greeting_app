import 'package:flutter/material.dart';

void main(){
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Greeting App",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

    MySnakeBar(message,context){
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greeting App'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, World!',style: TextStyle(color: Colors.red,fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 16,),
            Text('Welcome to Flutter'),
            SizedBox(height: 16,),
            Image.network('https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/flutter-icon.png',height: 200,),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              MySnakeBar('Button Pressed', context);
            }, child: Text('Press Me'),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),),
          ],
        ),
      ),
    );
  }
}

