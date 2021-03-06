
import 'package:flutter/material.dart';
import 'package:simplelogin/homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

 class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "bus";
  String password = "tester";
  String alert = "Login Ready";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void Loginproses (){
  if(_formKey.currentState!.validate()){
   if(usernameInput.text == username && passwordInput.text == password){
   
    Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context) => Homepage(username: username,))
          );
   }else{
     setState(() {
       alert = "Wrong Username or Password" ;
     });
   
   }
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Color.fromARGB(101, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 9, 130),
                shape: BoxShape.circle

               ),
              child: Center(
                child: Image.asset("assets/images/foto3.png", width: 100, height: 100,),
              ),

               ),
              SizedBox(height: 20,),

              Text("Welcome to Azurlane, Please Login", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(alert),
              SizedBox(height:20,),
          Form(
            key: _formKey,
            child:  Column(
              children: <Widget>[
            
              TextFormField(
                controller: usernameInput,
                validator: (value){
                  if(value!.isEmpty){
                    return "FILL YOUR USERNAME";

                  }
                  return null;
                },
                decoration: InputDecoration(
                  border : OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                  ),
                  prefixIcon: Icon(Icons.person, size: 40,),
                  hintText: "Username", iconColor: Color.fromARGB(255, 255, 255, 255),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height:20,),

               TextFormField(
                 controller: passwordInput,
                 validator: (value){
                   if(value!.isEmpty){
                     return "FILL YOUR PASSWORD";
                   }
                   return null;
                 },
                 obscureText: true,
                decoration: InputDecoration(
                  border : OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                  ),
                  prefixIcon: Icon(Icons.lock, size: 40,),
                  hintText: "Password", iconColor: Color.fromARGB(255, 255, 255, 255),
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 20,),

              Card(
                color: Colors.black,
                elevation: 3,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {Loginproses();},
                    child: Center(
                      child: Text("LOGIN", style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      ),
                  ),
                ),
              )
        ],
        ),
          )
          ],
        ),
      ),
    )
     ;
  }
}

