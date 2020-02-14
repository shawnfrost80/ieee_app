import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor));

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/wall.jpg'),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 90, left: 3),
                          child: Icon(
                            Icons.account_circle,
                            size: 60,
                          ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 10),
                        child: Text("johnexample@gmail.com", style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).selectedRowColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                      )
                    ),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.black),
                      title: Text("Home"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.message, color: Colors.black),
                    title: Text("Discussion Forum"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.highlight, color: Colors.black),
                    title: Text("Highlights"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.image, color: Colors.black),
                    title: Text("Resources"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text("CHAPTERS"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.directions_car, color: Colors.black),
                    title: Text("Robotic & Automation"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.computer, color: Colors.black),
                    title: Text("Computer Society"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.hourglass_empty, color: Colors.black),
                    title: Text("Industry & Automation"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add_to_queue, color: Colors.black),
                    title: Text("HKN Lambda ETA"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.pregnant_woman, color: Colors.black),
                    title: Text("Women In Engineering"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text("ACCOUNT"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_circle, color: Colors.black),
                    title: Text("My Account"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.exit_to_app, color: Colors.black),
                    title: Text("Log Out"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(icon: Icon(Icons.notifications), onPressed: () {},),
            )
          ],
          title: Text("BVPIEEE"),
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          bottom: TabBar(
            indicatorPadding: EdgeInsets.only(left: 15.0, right: 15.0),
            tabs: <Widget>[
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Upcoming",
                icon: Icon(Icons.event),
              ),
              Tab(
                text: "Chapters",
                icon: Icon(Icons.collections_bookmark),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(child: Text("Main content appears here.")),
          Center(child: Text("Upcoming events appear here")),
          Center(child: Text("Chapters apear here")),
        ],
      ),
    );
  }
}
