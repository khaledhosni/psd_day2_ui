import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          centerTitle: true,
          leading: Icon(Icons.ad_units_outlined),
          actions: [
            Container( margin: EdgeInsets.all(8),
                child: InkWell(child: Icon(Icons.add),

                  onTap: (){

                  },
                )
            ),

            Container( margin: EdgeInsets.all(8),
                child: InkWell(child: Icon(Icons.share),
                  onTap: (){
                      Share.share("check my beautiful product on this link");

                  },
                )
            ),
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
