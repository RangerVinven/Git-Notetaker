import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

import 'FilesAndFolders.dart';

class Navbar extends StatelessWidget {
  Navbar({
    Key? key,
  }) : super(key: key);

  TestData testData = new TestData();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.cyan,
        child: TreeView(
          
          nodes: testData.makeTreeView(TestData.files),
        )
          // children: TestData.filesAndFolders.map((fileOrFolder) => Text(fileOrFolder, style: const TextStyle(fontSize: 18),)).toList(),
      )
    );
  }
}