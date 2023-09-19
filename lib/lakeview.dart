import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                Container(
                    margin: EdgeInsets.all(16),
                    child: RatingRow()
                ),
                Container(
                  margin: EdgeInsets.all(20),
                    child: ActionRow()),

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
             crossAxisAlignment: CrossAxisAlignment.start,

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


class ActionRow extends StatelessWidget {
  const ActionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [


        InkWell(
          child: Column(
            children: [
              Icon(Icons.call,size: 32,),
              Text("Call")
            ],
          ),

          onTap: (){
            print('Helloooo');

            var uri=Uri(scheme: "tel",
              path: "+1-555-010-999"
            );
            launchUrl(uri);

          },
        ),
        Column(
          children: [
            Icon(Icons.call,size: 32,),
            Text("Call")
          ],
        ),
        Column(
          children: [
            Icon(Icons.call,size: 32,),
            Text("Call")
          ],
        ),

      ],
    );
  }
}
