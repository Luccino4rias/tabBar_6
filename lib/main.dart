import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestana Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
} //mi app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//segunda clase
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(100), // Creates border
                color: Color(0xff8cde97)), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.report_problem)),
              Tab(icon: Icon(Icons.phonelink_lock)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.perm_identity)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.report_problem, size: 350),
            Icon(Icons.phonelink_lock, size: 350),
            Icon(Icons.store, size: 350),
            Icon(Icons.perm_identity, size: 350),
          ],
        ),
      ),
    );
  }
}

//myhomepagestate
