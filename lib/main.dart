import 'package:exam_1/sayfa3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cansu Batmaz'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('İstanbul',style: TextStyle(fontSize: 30),
            ),
            SizedBox(height:10),
            Text('Ankara',style:TextStyle(color:Colors.green),),
            SizedBox(height: 10),
            Container(
                width: 100,
                height: 20,
                color:Colors.blue,
                child:Center(
                  child: Text('İzmir'),
                )
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>sayfa3()));
            },
                child:Text('Ekran 3 e geç',style: TextStyle(backgroundColor:Colors.red),
                ),


              ),

          ],

        ),

      )


    );

  }
}
