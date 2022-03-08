import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'add_store.dart';

class signin extends StatefulWidget{
  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool _ishidden =true;
  bool _ishidden2 =true;
  var firstcontroller=TextEditingController();
var lastcontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  var passcontroller=TextEditingController();
  var passcontroller2=TextEditingController();
  void _togglepasswordview(){
    setState(() {
      _ishidden=! _ishidden;
      _ishidden2= ! _ishidden2;
    });
  }

  int _value=1;


@override
Widget build(BuildContext context) {


  return Scaffold(
    appBar: AppBar(
      leading: IconButton(icon:Icon(Icons.arrow_back_ios),
      onPressed:() => Navigator.of(context).pop(),
      ),
    ),
    body:Padding(padding:const EdgeInsets.all(20.0),
      child:Center(
        child:SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "sign up",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: firstcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38) ),

                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: lastcontroller,//علشان اخذ الي دخل
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38) ),
                  labelText: "Last Name",

                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38) ),

                  labelText: "E-mail Address",
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: passcontroller,//علشان اخذ الي دخل
                keyboardType: TextInputType.visiblePassword,
                obscureText: _ishidden,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38) ),
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: InkWell(
                    onTap: password,
                    child: Icon(
                      _ishidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
               controller: passcontroller2,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _ishidden2,
                decoration: InputDecoration(
                  labelText: "Repeat Password",
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: InkWell(
                    onTap: password2,
                    child: Icon(
                      _ishidden2 ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),


                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 15.0),
              ),
              Row(
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value){
                      setState((){
                        _value= value!;
                      });

                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text("Male"),
                  Radio<int>(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value){
                      setState((){
                      _value= value!;
                      });
                    },
                  ),
                  SizedBox(width: 10.0,),
                  Text("Female"),
                ],
              ),
              Container(
                width:double.infinity,
                color: Colors.teal,

                child: MaterialButton(onPressed:()
                {
                  print(firstcontroller.text);
                  print(lastcontroller.text);
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => addstore(),
                  ),
                  );
                },
                  child: Text("Sign In",
                    style: TextStyle(
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ],


          ),
        ),
      ),
    ),
  );
}
void password(){
  setState(() {
    _ishidden =!_ishidden;

  });
}
  void password2(){
    setState(() {
      _ishidden2 =!_ishidden2;

    });
  }

}

