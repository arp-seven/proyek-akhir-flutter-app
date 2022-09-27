import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbih Digital',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Tasbeh App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCount() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: '$_counter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 55)),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: FloatingActionButton(
                      onPressed: _resetCount,
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.refresh),
                      )),
                )),
            Align(
                alignment: Alignment(-0.8,1),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: FloatingActionButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPage()))
                          },
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.info),
                      )),
                )),
          ],
        ));
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 120,
                  backgroundImage: AssetImage('image/me.jpg'),
                  
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Aji Rahmat Ruhiyat Permana",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 18,
              ),
              Text("Developer Of Tasbeh App"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: () async {
                      const url = 'https://github.com/arp-seven';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                    label: Text(
                      "GitHub",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton.icon(
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () async {
                      const url = 'https://www.linkedin.com/in/aji-rahmat-ruhiyat-permana-969562223/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                    label: Text(
                      "LinkedIn",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton.icon(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () async {
                      const url = 'https://instagram.com/ruhyatrp';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                    ),
                    label: Text(
                      "Instagram",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  // ElevatedButton.icon(
                  //   icon: FaIcon(FontAwesomeIcons.facebook),
                  //   onPressed: () {},
                  //   style: ButtonStyle(
                  //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(50),
                  //       ),
                  //     ),
                  //     backgroundColor:
                  //         MaterialStateProperty.all<Color>(Colors.red),
                  //     padding: MaterialStateProperty.all(
                  //       EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  //     ),
                  //   ),
                  //   label: Text(
                  //     "Facebook",
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 18,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
