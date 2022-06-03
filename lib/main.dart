import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

import 'Navbar.dart';
import 'TestData.dart';

const String NOTE_URL = "https://api.github.com/repos/RangerVinven/Bug-Bounty-Cheatsheet/contents/";

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();

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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Git NoteTaker"),
              SizedBox(
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all<double>(0)
                  ),
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Navbar(),
              Expanded(
                flex: 4,
                child: MarkdownTextInput(
                  (String value) => setState(() => TestData.testMarkdown = value),
                  TestData.testMarkdown,
                  label: "Your Markdown",
                  maxLines: 40,
                  actions: const [MarkdownType.blockquote, MarkdownType.bold, MarkdownType.code, MarkdownType.link, MarkdownType.separator, MarkdownType.strikethrough, MarkdownType.title],
                  controller: controller,
                )
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Markdown(
                    data: TestData.testMarkdown,
                    selectable: true,
                    controller: scrollController,
                  ),
                )
              ),
            ],
          ),
      ),
    );
  }
}