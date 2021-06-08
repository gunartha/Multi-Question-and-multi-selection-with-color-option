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

		  List<QueAnsBean> data = [];

		  @override
		  void initState() {
			super.initState();
			generateBean();
		  }

		  @override
		  Widget build(BuildContext context) {
			return Scaffold(
				appBar: AppBar(
				  title: Text("Click Multi color"),
				),
				body: ListView.builder(
					itemCount: 15,
					itemBuilder: (context, index) {
					  QueAnsBean item = data[index];
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
								Text("${item._que}"),
								SizedBox(
								  height: 10,
								),
								InkWell(
								  //yes
								  onTap: () {
									item._answer = "1";
									setState(() {});
								  },
								  child: Container(
									width: 200,
									height: 50,
									decoration: BoxDecoration(
									  borderRadius: BorderRadius.circular(15.0),
									  color: item._answer == "1"
										  ? kGreenColor
										  : kGrayColor,
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
									item._answer = "2";
									setState(() {});
								  },
								  child: Container(
									width: 200,
									height: 50,
									decoration: BoxDecoration(
									  borderRadius: BorderRadius.circular(15.0),
									  color:
										  item._answer == "2" ? kRedColor : kGrayColor,
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
									item._answer = "3";
									setState(() {});
								  },
								  child: Container(
									width: 200,
									height: 50,
									decoration: BoxDecoration(
									  borderRadius: BorderRadius.circular(15.0),
									  color: item._answer == "3"
										  ? kYellowColor
										  : kGrayColor,
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

		  void generateBean() {
			for (int i = 0; i < 15; i++) {
			  data.add(QueAnsBean(que: "Question - $i", answer: ""));
			}
		  }
		}

		class QueAnsBean {
		  String? _que;
		  String? _answer;

		  String? get que => _que;

		  String? get answer => _answer;

		  QueAnsBean({String? que, String? answer}) {
			_que = que;
			_answer = answer;
		  }

		  QueAnsBean.fromJson(dynamic json) {
			_que = json["que"];
			_answer = json["Answer"];
		  }

		  Map<String, dynamic> toJson() {
			var map = <String, dynamic>{};
			map["que"] = _que;
			map["Answer"] = _answer;
			return map;
		  }
		}
