import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'DetailPage.dart';
import 'lesson.dart';
//import 'new_page.dart';

final makeBottom = Container(
  height: 55.0,
  child: BottomAppBar(
    color: Color.fromRGBO(58, 66, 86, 1.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.blur_on, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.hotel, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.account_box, color: Colors.white),
          onPressed: () {},
        )
      ],
    ),
  ),
);

class BodyTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child: ListTile(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(width: 1.0, color: Colors.white24))),
                    child: Icon(Icons.autorenew, color: Colors.white),
                  ),
                  title: Text(
                    "test",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),

                  subtitle: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            // tag: 'hero',
                            child: LinearProgressIndicator(
                                backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                                value: 2.0,
                                valueColor: AlwaysStoppedAnimation(Colors.green)),
                          )),
                      Expanded(
                        flex: 4,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text("Lesson",
                                style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  trailing:
                  Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
                  onTap: () {Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(lesson: Lesson())));
                  }
              ),
            ),
          );
        },
      ),
    );


  }
}








class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        ),
        home: new HomePage(),

    );

  }
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      bottomNavigationBar: makeBottom,
      appBar: new AppBar(
        title : new Text("Drawer App"),
        elevation:  defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Hasnain Ahmed"),
              accountEmail: new Text("husnainahmed61@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: new Text("H"),
              ),
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("New Page"),
              trailing: new Icon(Icons.money_off),
              onTap: () => {},
            ),
            new Divider(),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.arrow_drop_up),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: BodyTest(),
    );
  }
}