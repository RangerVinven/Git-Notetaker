import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Git NoteTaker"),
          elevation: 0,
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Navbar(),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  child: Text("fda"),
                )
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: Text("fda"),
                )
              ),
            ],
          ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.cyan,
        child: Text("fdsa"),
      )
    );
  }
}