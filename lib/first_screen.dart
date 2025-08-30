
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override

  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3), 
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondScreen()),
    ),
      );
      

    
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [Colors.purple, Colors.blue],
        begin: FractionalOffset(0, 0),
        end: FractionalOffset(0.5, 0.6),
        tileMode: TileMode.repeated,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            './android/assets/image/app_screen.jpg',
            width: 200,
          ),
        ),
        const SizedBox(height: 50),
        const SpinKitSpinningLines(color: Colors.pinkAccent),
      ],
    ),
  );
  }
}
  class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: const Center(
        child: Text(
          'This is the second screen',
          style: TextStyle(
            fontSize: 24,
            color: Colors.amberAccent,
            fontWeight: FontWeight.w500,
            fontFamily: "Alike",
          ),
        ),
      ),
    );
  }
}