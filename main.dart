import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Click Color Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final kSecondaryColor = Color(0xFF8B94BC);
  final kPrimaryColor = Color(0xFF748BF5);
  final kGreenColor = Color(0xFFAAF39C);
  final kRedColor = Color(0xFFF7BCBD);
  final kYellowColor = Color(0xFFF0EE8C);
  final kGrayColor = Color(0xFFD8D5D5);
  final kBlackColor = Color(0xFF101010);

  Color colorYes = Color(0xFFD8D5D5);
  Color colorNo = Color(0xFFD8D5D5);
  Color colorNA = Color(0xFFD8D5D5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Click Multi color"),
        ),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return new Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("Question $index"),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          //yes
                          onTap: () {
                            setState(() {
                              colorYes = kGreenColor;
                              colorNo = kGrayColor;
                              colorNA = kGrayColor;
                            });
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: colorYes,
                            ),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              colorYes = kGrayColor;
                              colorNo = kRedColor;
                              colorNA = kGrayColor;
                            });
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: colorNo,
                            ),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              colorYes = kGrayColor;
                              colorNo = kGrayColor;
                              colorNA = kYellowColor;
                            });
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: colorNA,
                            ),
                            child: Container(
                              child: Center(
                                child: Text(
                                  "N/A",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
