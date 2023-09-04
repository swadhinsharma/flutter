import 'package:flutter/material.dart'; 
// import 'package:flutter_application_1/pages/homepage.dart';
// import 'package:flutter_application_1/pages/signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/newapp.png",
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(50)),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter Name')),
          Padding(padding: EdgeInsets.all(20)),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter Password',
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('back'), style: TextButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 104, 6, 6), // Text Color
                    ),),
        ],
      ),
    );
  }
  Row signUpOption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center ,
    children: [
      const Text('DONT have a account'),
      GestureDetector(
        onTap: () {
          // Navigator.push(context,
          // MaterialPageRoute(builder: (context)=> SignUp()));
        },
        child :const Text("signup",
        style: TextStyle(color: Colors.black))
      ),
    ],
    );
  } 
}
