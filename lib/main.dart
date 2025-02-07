import 'package:flutter/material.dart';

void main() {
  runApp(AccountingApp());
}

class AccountingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASCII Topology App',
      home: Scaffold(
        appBar: AppBar(title: Text('ASCII Topology')),
        body: SingleChildScrollView(
          child: Text('''
REPLACE_ME
Cash + Assets
Total Banks + Stocks + 401K +
|               +---------------+---------------+
|                               |
REPLACE_ME
Total Banks + Stocks + 401K
|               +---------------+---------------+
|                               |
REPLACE_ME
Total on 401K
|               +---------------+---------------+
|                               |
REPLACE_ME           REPLACE_ME           REPLACE_ME           REPLACE_ME
|               |               |               |
Roth          Non-Roth          Roth          Non-Roth
|               |               |               |
+-------+-------+               +-------+-------+
|                               |
401K                            401K
|                               |
User 1                          User 2
|                               |
+---------------+---------------+
|                               |
REPLACE_ME
Total Banks + Stocks
|               +---------------+-------------+
|                             |
REPLACE_ME                          REPLACE_ME
Total Banks                   Total Stocks
|                             |
+-------+-------+             +-------+-------+
|               |             |               |
REPLACE_ME           REPLACE_ME          REPLACE_ME           REPLACE_ME
|               |             |               |
Bank 1          Bank 2        Stocks          Stocks
|               |             |               |
+-------+-------+             +-------+-------+
|                             |
REPLACE_ME                          REPLACE_ME
|                             |
User 1                        User 2
|                             |
+--------------+--------------+
|                            Income
child: Text('''Net Worth
body: SingleChildScrollView(
appBar: AppBar(title: Text('ASCII Topology')),
home: Scaffold(
title: 'ASCII Topology App',
return MaterialApp(
Widget build(BuildContext context) {
@override
class AccountingApp extends StatelessWidget {}
runApp(AccountingApp());
void main() {
import 'package:flutter/material.dart';
'''),
        ),
      ),
    );
  }
}