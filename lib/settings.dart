import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechanger/pages/permanent.dart';
import 'package:themechanger/pages/present.dart';
import 'package:themechanger/pages/profile.dart';
import 'package:themechanger/pages/settings.dart';
import 'package:themechanger/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer of user"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            //padding: EdgeInsets.all(16.0),
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 300,
                      child: DrawerHeader(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Muktadir Sonyy",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "muktadir.hossain2@northsouth.edu",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Home", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.home),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Profile", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.person),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Profile()));
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Present Address", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.add_road),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Present()));
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Permanent Address", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.add_road),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Permanent()));
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Settings", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.settings),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Settings()));
                        },
                      ),
                    ),
                    Card(
                      child: Consumer<ThemeNotifier>(
                        builder:(context, notifier, child) =>
                            SwitchListTile(
                              title: Row(
                                children: [
                                  Icon(Icons.book),
                                  SizedBox(width: 30,),
                                  Text("Change theme", style: TextStyle(fontSize: 20),),
                                ],
                              ),
                              onChanged:(value){
                                notifier.toggleTheme();
                              } ,
                              value: notifier.lightTheme,
                            ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Log out", style: TextStyle(fontSize: 20),),
                        leading: Icon(Icons.logout),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ]
              ),
            ],
          ),
        )
    );
  }
}