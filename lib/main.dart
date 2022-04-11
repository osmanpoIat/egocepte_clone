import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({ Key? key }) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        iconSize: 30,
        selectedItemColor: Colors.grey.shade600,
        unselectedItemColor:Colors.grey.shade600, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Ana Sayfa",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favoriler"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Ankarakart"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menü"
          ),
        ],
      ),

      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/anıtkabir.jpg"),fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.search,color: Colors.green.shade400,),
                        SizedBox(width: 10,),
                        Text(
                          "Otobüs Nerede ?"
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  
                  card("https://cdn2.iconfinder.com/data/icons/business-1407/32/office_megaphone_speaker_loudspeaker_announce-256.png", "Duyurular"),
                  card("https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-search-strong-256.png", "Durak Ara"),
                  card("https://cdn0.iconfinder.com/data/icons/typicons-2/24/calender-outline-256.png", "Seferler"),
                ],),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  
                  card("https://cdn3.iconfinder.com/data/icons/business-and-finance-199/10/9-256.png", "Yakın Bayiler"),
                  card("https://cdn1.iconfinder.com/data/icons/line-free/24/Bus-128.png", "Yakın Duraklar"),
                  card("https://cdn1.iconfinder.com/data/icons/iconoir-vol-2/24/headset-issue-256.png", "Sorun Bildir"),
                ],),
                
              ],
            
            ),
          )
        ],
      ),
    );
  }

  Widget card(String iconurl,String aciklamayazi){
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      child: Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: <Widget>[
            Image(image: NetworkImage(iconurl),width: 50,height: 50,),
            SizedBox(height: 3,),
            Text(aciklamayazi)
          ],
        ),
      ),
    );
  }
}

