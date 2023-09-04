import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context)  async {
    if (_formkey.currentState!.validate()){
    setState(() {
      changebutton = true;
      });
    await Future.delayed(Duration(seconds: 2));
    await Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));

      setState(() {
        changebutton = false;
    });}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup page"),
        backgroundColor: Colors.purpleAccent[400],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child:  Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 150, child: Image.asset("assets/images/newapp.png")),
              SizedBox(
                height: 15,
              ),
              Title(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "welcome $name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )), //$name
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 7),
                child: Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Name",
                          hintText: "Enter Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty){
                            return "Name is required";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: "Enter Email"),
                            validator: (value) {
                          if (value!.isEmpty){
                            return "Email is required";
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      width: 400,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter Password"),
                            validator: (value) {
                          if (value!.isEmpty){
                            return "Password is required";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
             InkWell( 
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changebutton ?50 : 150,
                child: changebutton ? Icon(Icons.done) : Text("Sign Up"),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(changebutton ? 20 : 8),
                  color: Color.fromARGB(255, 152, 45, 158),
                ),),
             )
            ],
          ),
          ),
        ),
      ),
    );
  }
}


// ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => LogIn()));
//                   },
//                   child: Text("swadhin"))
