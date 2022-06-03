import 'package:flutter/material.dart';

import 'TestData.dart';

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
        child: ListView(
          children: TestData.filesAndFolders.map((fileOrFolder) => Text(fileOrFolder, style: const TextStyle(fontSize: 18),)).toList(),
        )
      )
    );
  }
}