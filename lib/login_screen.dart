import 'package:flutter/material.dart';
import 'package:login/sgin_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}
  class _LoginScreen extends State<LoginScreen> {
  bool _isHidden = true;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  void _togglepasswordview(){
    setState((){
      _isHidden = !_isHidden;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Text(
               'LOGIN',
               style: TextStyle(
                 fontSize: 40.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
              SizedBox(
                height: 70.0,
              ),
              TextFormField(

                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value)
                {
                  print(value);
                },
                //لما اكتب حاجة و بعد كدة اكتب حاجة تاني يجمع كله مع بعض
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'E-mail Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isHidden,
                onFieldSubmitted: (String value)
                {
                  print(value);
                },
                //لما اكتب حاجة و بعد كدة اكتب حاجة تاني يجمع كله مع بعض
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                      Icons.lock,
                  ),
                  suffixIcon: InkWell(
                    onTap: password,
                    child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                color: Colors.teal,
                width: double.infinity,
                child: MaterialButton(onPressed: ()
                {
                  print(emailController.text);
                  print(passwordController.text);
                },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => signin(),
                      ),
                      );
                    },
                    child: Text(
                    'Register Now',
                  ),
                  ),
                ],
              ),
              TextButton(
                onPressed: (){

                },
                child: Text(
                  'Forget Password?',
                ),
              ),
            ]
            ),
          ),
        ),
      ),
    );
  }

  void password() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

