import 'package:flutter/material.dart';

class LogUp extends StatefulWidget {
  const LogUp({super.key});

  @override
  State<LogUp> createState() => _LogUpState();
}

class _LogUpState extends State<LogUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Run'),
      ),
      body: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.red),
        ),
        child: Center(
          child: Text(
            'This is container',
          ),
        ),
      ),
    );
  }
}
