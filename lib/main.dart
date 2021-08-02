import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Row(
        children: [
          sidebar(),
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topNavBar(context),
                SizedBox(
                  height: 20,
                ),
                statscards(),
                SizedBox(
                  height: 20,
                ),
                graphRow(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "All campaigns",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 1300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name"),
                      Text("Start"),
                      Text("End"),
                      Text("Engagement"),
                      Text("Time"),
                      Text("Sent to"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1300,
                  child: Row(
                    children: [
                      Text(
                        "School Tour",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 173,
                      ),
                      Text(
                        "February 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 152,
                      ),
                      Text(
                        "March 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 158,
                      ),
                      Text(
                        "23%",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 267,
                      ),
                      Text(
                        "2 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1300,
                  child: Row(
                    children: [
                      Text(
                        "School Tour",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 173,
                      ),
                      Text(
                        "February 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 152,
                      ),
                      Text(
                        "March 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 158,
                      ),
                      Text(
                        "23%",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 267,
                      ),
                      Text(
                        "2 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 1300,
                  child: Row(
                    children: [
                      Text(
                        "School Tour",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 173,
                      ),
                      Text(
                        "February 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 152,
                      ),
                      Text(
                        "March 2019",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 158,
                      ),
                      Text(
                        "23%",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 267,
                      ),
                      Text(
                        "2 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Text(
                        "-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Row graphRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Image.network("https://i.imgur.com/D77aOuy.png")),
        ),
        SizedBox(
          width: 100,
        ),
        Card(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Image.network("https://i.imgur.com/talfOi5.png")),
        ),
      ],
    );
  }

  Row statscards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        onenichekacard(
            "https://i.imgur.com/TJte9FD.png", "Total Campaign", "49"),
        SizedBox(
          width: 80,
        ),
        onenichekacard(
            "https://i.imgur.com/MQDdEuC.png", "Avg Load Score", "27/100"),
        SizedBox(
          width: 80,
        ),
        onenichekacard("https://i.imgur.com/Ie9IBKC.png", "Avg Rate", "74%"),
        SizedBox(
          width: 80,
        ),
      ],
    );
  }

  Card onenichekacard(String imageUrl, String title, String number) {
    return Card(
      color: Colors.white,
      child: Container(
        width: 390,
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
            ),
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title),
                SizedBox(
                  height: 10,
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row topNavBar(BuildContext context) {
    return Row(
      children: [
        Text(
          "Analytics",
          style: TextStyle(
            fontSize: 28,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Last 3 months ",
                style: TextStyle(
                    fontFamily: "Poppins", fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 19,
            ),
            Container(
              width: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Filters ",
                    style: TextStyle(
                        fontFamily: "Poppins", fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Container sidebar() {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 245, 249, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "PeerPal",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.9,
                color: Color.fromRGBO(12, 120, 236, 1),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          text("Dashboard", Icons.speed),
          SizedBox(
            height: 30,
          ),
          text("Contacts", Icons.person),
          SizedBox(
            height: 30,
          ),
          text("Campaigns", Icons.lunch_dining),
          SizedBox(
            height: 30,
          ),
          text("Events", Icons.event),
          SizedBox(
            height: 30,
          ),
          text("Analytics", Icons.pie_chart),
          SizedBox(
            height: 30,
          ),
          text("Settings", Icons.settings),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            height: 40,
            color: Colors.blue,
            margin: EdgeInsets.all(
              20,
            ),
            child: Center(
              child: Text(
                " + New Campaign",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Container text(String text, IconData icon) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(text),
        ],
      ),
    );
  }
}
