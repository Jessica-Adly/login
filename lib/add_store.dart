import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class addstore extends StatelessWidget {
var storename=TextEditingController();
var storeaddres=TextEditingController();
var storedescription=TextEditingController();
 var storenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed:() => Navigator.of(context).pop() ,
        ),

      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add Store",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: storename,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Store Name",
                  prefixIcon: Icon(
                    Icons.add_business,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: storeaddres,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Store Address",
                  prefixIcon: Icon(
                    Icons.add_location,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: storedescription,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Store Description",

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: storenumber,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Store Number",
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text('Add Photo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),),
                  SizedBox(width: 10,),
                  Container(
                   width: 100.0,
                   height: 100.0,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.white,
                   ),
                     child: IconButton(
                      icon:Icon(Icons.camera_enhance_rounded) ,
                       onPressed: ()
                       {

                       },
                     ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                width:double.infinity,
                color: Colors.teal,

                child: MaterialButton(onPressed:()
                {
                  print(storename.text);
                  print(storeaddres.text);
                  print(storedescription.text);
                  print(storenumber.text);
                },
                  child: Text("Submit",
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
}
