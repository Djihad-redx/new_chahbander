import 'package:flutter/cupertino.dart';

class MyOrderPage extends StatefulWidget {
  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('MyOrder Page',style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
