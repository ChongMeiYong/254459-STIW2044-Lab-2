import 'package:flutter/material.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new LoginPage(),
    );
  }
}

bool _isChecked = false;
final TextEditingController _emcontroller = TextEditingController();
final TextEditingController _pscontroller = TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,       
      body: new Container(         
        padding: EdgeInsets.all(15.0),         
        child: Column(           
          mainAxisAlignment: MainAxisAlignment.center,           
          children: <Widget>[             
            Image.asset(               
              'assets/images/logon.png',               
              scale: 2.0,             
            ), 

            new Padding(padding: new EdgeInsets.only(top: 10.0),),

            TextField(
              maxLines: 1,
              controller: _emcontroller,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(                    
                hintText: "Email",
                labelText: "Email",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(0.0)
                ),
              ),  
            ),

            new Padding(padding: new EdgeInsets.only(top: 10.0),),

            TextField(
              maxLines: 1,
              controller: _pscontroller,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(                    
                hintText: "Password",
                labelText: "Password",
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(0.0)
                ),
              ),  
              obscureText: true,
            ),

            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool value) {
                    _onChange(value);
                  },
                ),
                Text('Remember Me', style: TextStyle(fontSize: 15))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)), 
                  minWidth: 250,
                  height: 50,
                  child: Text('LOGIN', style: TextStyle(fontSize: 18)),
                  color: Colors.blueAccent,
                  textColor:  Colors.white,
                  elevation:  15,
                  onPressed: _onPress,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Register New Account"),
              SizedBox(
                height: 20,
              ),
              Text("Forgot Password"),
           ],
        ),
       ),
    );
  }

  void _onChange(bool value) {
    setState(() {
      _isChecked = value;
      print('Check value $value');
    });
  }

  void _onPress() {
    print(_uncontroller.text);
    print(_pscontroller.text);
  }
}