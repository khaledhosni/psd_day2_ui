import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 16),
                        child: ElevatedButton(onPressed: (){}, child: Text('Button 1.1'))),
                    ElevatedButton(onPressed: (){}, child: Text('Button 1.2')),
                  ],
                ),
                ElevatedButton(onPressed: (){}, child: Text('Button 2')),
                ElevatedButton(onPressed: (){}, child: Text('Button 3')),
                ElevatedButton(onPressed: (){}, child: Text('Button 4')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
