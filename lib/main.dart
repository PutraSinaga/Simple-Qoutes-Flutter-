import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: qoutes(),
));

class qoutes extends StatefulWidget {

  @override
  _qoutesState createState() => _qoutesState();
}

class _qoutesState extends State<qoutes> {
  int indexqoutes = 0 ;
  List kumpulan_qoutes = [


    "semangat kakaa", "jangan nyerah", "pasti bisa", "yoooayooo", "gagal? maju lagi", "Tuhan akan bersama mu lagi", "maju jangan mundur",
    "you'll never walk alone", "just go ahead from other people", "kalo jatuh bangun lagi", "majuu", "putra sinaga"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        title: Text("qoutesApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info),)
        ],


      ),

      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              width: 430,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),

                child:Center(child: Text(kumpulan_qoutes[indexqoutes % kumpulan_qoutes.length], style: TextStyle(fontStyle: FontStyle.italic, fontSize: 13, color: Colors.grey),))),
            Divider(
              thickness: 2.3,
            ),
            Padding(

              padding: const EdgeInsets.only(top : 10.0),
              child: Center(
                child: FlatButton.icon(onPressed: methdoqoutes, icon: Icon(Icons.format_quote),color: Colors.blue.shade200, // editing button "qoutes"
                    label: Text("Lets roll",
                      style: TextStyle(fontSize: 12.0 ,
                          color:Colors.white),)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Creation by Putra Sinaga", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),),
                  Text("Putrasaut@gmail.com", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),)
                ],
              ),
              /*child: FlatButton.icon(onPressed: null, icon: Icon(Icons.account_circle), label: Text("Creation by Putra Sinaga \n putrasaut@gmail.com", style: TextStyle(fontStyle: FontStyle.italic),))*/



            )

          ],
        ),
      ),
    );
  }

  void methdoqoutes() {

    setState(() {
      indexqoutes+=1 ;
    });



  }
}
