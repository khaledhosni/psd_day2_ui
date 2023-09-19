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
            child: Column(
              children: [
                Image.network("https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg",width: 600,height: 240,fit: BoxFit.cover,),
                RatingRow(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}




class RatingRow extends StatelessWidget {
  const RatingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,

      children: [
        Expanded(
          child: Column(

            children: [
              Text("Zagazig Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Cairo, Egypt", style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
            ],
          ),
        ),
        
        Icon(Icons.star,color: Colors.amber,),
        Text("4.2")
      ],
    );
  }
}


