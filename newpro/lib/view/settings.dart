import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(height: Get.width/3,color: Color(0xff49796B),),
              Positioned(top:Get.width/3.9,child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(radius: 50,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('image/Logo.png'),
                ),
              )),

            ],
          ),
          SizedBox(height: 100,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(child: Column(
              children: [
                ListTile(
                  title: Text("About us"),
                  trailing: Icon(Icons.help_outline_rounded),

                ),
                Divider(),
                ListTile(
                  title: Text("Contact us"),
                  trailing: Icon(Icons.phone_callback_outlined),

                ),

                Divider(),
                ListTile(
                  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return LoginScreen();}));
                  },
                  title: Text("Logout"),
                  trailing: Icon(Icons.exit_to_app),
                )


              ],
            ),),
          )
        ],
      ),


    );
  }
}
