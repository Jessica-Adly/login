import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:login/setting_screen.dart';
import 'abuotus.dart';
import 'account.dart';
import 'favorite.dart';


class mainapp extends StatefulWidget {
  @override
  State<mainapp> createState() => _mainappState();
}

class _mainappState extends State<mainapp> {
  bool issearch=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer:Drawer(
        child: ListView(
          padding:EdgeInsets.zero ,
          children:[
            UserAccountsDrawerHeader(accountName: Text("mena helmy"),
                accountEmail: Text("mena helmy @gmail.com"),

              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fdepositphotos.com%2Fvector-images%2Fdefault-profile-picture.html&psig=AOvVaw1YUcOgVRNdabBvfUeSeGyn&ust=1646568376275000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCKCZhK_3rvYCFQAAAAAdAAAAABAD",
                    width: 90.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Account"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => account(),), );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SettingScreen(),), );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => favorite(),), );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_late_outlined),
              title: Text("Abuot Us"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => abuotus(),), );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
              onTap: () => null,
            ),
          ],
        ),
      )  ,
      appBar: AppBar(
        title:!issearch ? Text("Fit Me"):TextField(
          style: TextStyle(color:Colors.white),
          decoration: InputDecoration(
            icon:Icon(Icons.search, color:Colors.white),
            hintText: "Search",
            hintStyle: TextStyle(color:Colors.white),
          ),),
        centerTitle: true,
        actions: <Widget>[
          issearch ?
          IconButton(
            icon:Icon(Icons.cancel),
              onPressed: (){
                setState(() {
                  this.issearch=false;

                });
              },
          )
              :IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
              setState(() {
                this.issearch=true;

              });
            },
          )
        ],
      ),
      body:
      Column(
              children: [
                 Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0,),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          InkWell(
                            onTap:(){},
                            child:Ink.image(image:NetworkImage("https://www.yasmall.ae/media/1861/zara-1.jpg"),
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Container(
                            width: 200.0,
                            padding:const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            color: Colors.black.withOpacity(.5),
                            child: Text("ZARA",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0,
                            color: Colors.white,

                            ),

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


              ],
            ),
          );


  }
}


