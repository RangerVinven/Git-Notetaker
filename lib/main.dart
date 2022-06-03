import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {});
  }

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
                  child: MarkdownTextInput(
                    (String value) => setState(() => testMarkdown = value),
                    testMarkdown,
                    label: "Your Markdown",
                    maxLines: 40,
                    actions: const [MarkdownType.blockquote, MarkdownType.bold, MarkdownType.code, MarkdownType.link, MarkdownType.separator, MarkdownType.strikethrough, MarkdownType.title],
                    controller: controller,
                  ),
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