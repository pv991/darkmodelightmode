import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color bgcolor = Colors.white;
  Color textcolor = Colors.black;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          title: Text("Stateful Demo"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(

                      onPressed: (){

                        setState(() {
                          bgcolor =Colors.black;
                          textcolor = Colors.white;

                        });

                      }, child: Text("DARK MODE")),
                  SizedBox(width: 10, ),
                  ElevatedButton(onPressed: (){



                    setState(() {
                      bgcolor =Colors.white;
                      textcolor = Colors.black;
                    });

                  }, child: Text("LIGHT MODE")),
                ],
              ),

              SizedBox(height: 100,),
              Text("LIGHT MODE SELECTED",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                   fontSize: 20,
                  color: textcolor,
                ),)
            ],
          ),
        ),
      )
      ,
    );
  }
}