import 'package:flutter/material.dart';
import 'lesson.dart';
import 'homeScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      home: new LoginPage(),
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),

    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  List lessons;


  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return new Scaffold(
          backgroundColor: Colors.white,
          body:  Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: new Column(
                    children: <Widget>[
                      new Image(
                        image: new AssetImage("assets/handson.png"),
                        fit: BoxFit.fitHeight,

                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      new Text("Sign-in",style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold
                      )
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      Center(
                        child: Theme(
                          data: new ThemeData(
                              brightness: Brightness.light,
                              primarySwatch: Colors.teal
                          ),
                          child: Container(
                            child: new Column(
                              children: <Widget>[

                                new Center(
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new FlatButton.icon(
                                        icon: Icon(Icons.account_box),
                                        color: Colors.red,
                                        textColor: Colors.white,
                                        label: new Text("Google"),
                                        onPressed: () => {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()),
                                          ),
                                        },
                                        splashColor: Colors.deepOrange,

                                      ),

                                      new FlatButton.icon(
                                        icon: Icon(Icons.view_headline),
                                        color: Colors.blue,
                                        textColor: Colors.white,
                                        label: new Text("Facebook"),
                                        onPressed: ()=>{},
                                        splashColor: Colors.deepOrange,

                                      ),
                                    ],
                                  ),
                                ),



                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );

  }
}

List getLessons() {
  return [
    Lesson(
        title: "Introduction to Driving",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Observation at Junctions",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Reverse parallel Parking",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Reversing around the corner",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Incorrect Use of Signal",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Engine Challenges",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Self Driving Car",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}