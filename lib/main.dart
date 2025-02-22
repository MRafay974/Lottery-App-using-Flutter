import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  int win = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lottery Game")),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("The lottery number is $win")),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: (x == win)
                    ? Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_all,
                              color: Colors.green,
                              size: 35,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Congratulations you have won the lottery => $win \n  ",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Better Luck next time , Your number was $x\n Try Again ",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
