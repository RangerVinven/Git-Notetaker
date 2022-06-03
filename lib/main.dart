import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const HomePage());
}

String testMarkdown = '''
# Hello World
*It Works*
- Test 1
- Test 2
- Test 3

```SQL
SELECT * FROM users;
```
''';

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
              const Navbar(),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  child: const Text("fda"),
                )
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                  child: Markdown(
                    data: testMarkdown
                  ),
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