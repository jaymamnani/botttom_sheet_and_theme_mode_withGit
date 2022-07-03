import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: GestureDetector(
        onTap: (){
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text("Light Theme"),
                    onTap: (){Get.changeTheme(ThemeData.dark());},
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text("Dark Theme"),
                    onTap: (){Get.changeTheme(ThemeData.light());},
                  ),
                ],
              )
            )
          );
        },
        child: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(9),
          child: Text("Bottom Sheet"),
        ),
      ),
    ), 
         
    );
  }
}