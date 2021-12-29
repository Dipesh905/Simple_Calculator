import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int result = 0;
  var firstnumber = 0;
  var secondnumber = 0;
  TextEditingController _firstnumbercontroller = TextEditingController();
  TextEditingController _secondnumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Simple Calculator"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: _firstnumbercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter First Number"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _secondnumbercontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Second Number"),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstnumber = int.parse(_firstnumbercontroller.text);
                          secondnumber =
                              int.parse(_secondnumbercontroller.text);

                          result = (firstnumber + secondnumber);
                        });
                      },
                      child: Text("Add")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstnumber = int.parse(_firstnumbercontroller.text);
                          secondnumber =
                              int.parse(_secondnumbercontroller.text);

                          result = (firstnumber - secondnumber);
                        });
                      },
                      child: Text("Substract")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstnumber = int.parse(_firstnumbercontroller.text);
                          secondnumber =
                              int.parse(_secondnumbercontroller.text);

                          result = (firstnumber * secondnumber);
                        });
                      },
                      child: Text("Multiply")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstnumber = int.parse(_firstnumbercontroller.text);
                          secondnumber =
                              int.parse(_secondnumbercontroller.text);

                          result = (firstnumber ~/ secondnumber);
                        });
                      },
                      child: Text("Division"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.yellow,
                child: Center(child: Text("Result: $result")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
