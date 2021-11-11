import 'package:flutter/material.dart';
import 'package:baitapfb/icons/my_icons_icons.dart';


void main() {
  runApp(const MyApp());
}
Container Frequest ( String link, String themfriend,String thename,String thetime)
{
 return 
 Container(
   color: Colors.pink.shade50,
   padding: EdgeInsets.only(left: 20,right: 20,top: 16,bottom: 15),
   child:Row(children: [Container(
   child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child:
                  Image.asset(link,height: 45,width: 45),
            )
 ),


Expanded(  
child:Container(padding: EdgeInsets.only(left: 20),child: Column(children: [ Container(alignment: Alignment.centerLeft , child:Text(thename,style: TextStyle(fontWeight: FontWeight.bold))),Container(alignment: Alignment.centerLeft ,child:Text(themfriend,style: TextStyle(fontSize: 10),)),Row( children: [OutlinedButton(
    child: Text('Xác Nhận'),
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.pink[100],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
    ),
    onPressed: () {
     
    },
  ),
  SizedBox(width: 10),
   OutlinedButton( 
    child: Text('  Từ chối  '),
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      
    ),
    onPressed: () {
      
    },
  )
  ],)  ])), )


 
 ,Text(thetime)],
 ));}

Container Pinfor(IconData theicon,String theinfor,String theinfor2, Color color)
{
 return 
 Container(
   padding: EdgeInsets.only(left: 20,right: 20,top: 12,bottom: 12),
   child:Row(
      children: [  Icon(theicon,color: color) ,Container(padding: EdgeInsets.only(left: 20) , child:Row(children: [Text(theinfor),
      if(theinfor2!='')
      Text(theinfor2,style: TextStyle(fontWeight: FontWeight.bold))
      ],))]));

}
   


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'RobotoMono',
       
        primarySwatch: Colors.pink,
  ),
      home: const MyHomePage(title: 'Fake Facebook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
Widget InfomationScreen = Column(children: [

   
   Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      ClipRRect(
            borderRadius: new BorderRadius.circular(40.0),
            child: Image.asset('images/tienlu.jpg', height: 80, width: 80),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 40),
            child: AspectRatio(aspectRatio: 1, child: Image.asset('images/tienlu.jpg', fit: BoxFit.cover),),
        ),
    ],
)


   ,Row(children: [
  Container( color: Colors.pink[700], child:  OutlinedButton.icon(
  onPressed: () { },
  icon: Icon(Icons.add, color: Colors.white,size: 18),
  label: Text("Thêm vào tin",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
  ),
),
),
  SizedBox(width: 10),

   OutlinedButton( 
    child: Icon(MyIcons.dot_3),
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      
    ),
    onPressed: () {
      
    },
  )


],),
   Divider(),
Pinfor((MyIcons.location_on), 'Đến từ ','Gia Kiem, Vietnam',Colors.grey),
Pinfor((MyIcons.twitter), 'Hai Hoang','',Colors.blue),
Pinfor((MyIcons.instagram), 'hh.180977','',Colors.grey),
Pinfor((MyIcons.youtube), 'HaiBaBon','',Colors.red),




]);


    Widget friendScreen = Column(children: [


      Row(children: [Expanded(child: Container( alignment: Alignment.center ,child: Text('Bạn Bè',style: TextStyle(fontWeight: FontWeight.bold),))), Icon(Icons.search)],),

Container(padding: EdgeInsets.only(left: 20), height: 50,child: 

 Row(children: [
  OutlinedButton( 
    child: Text('Gợi ý'),
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.grey[200],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), 
    ),
    onPressed: () {
      
    },
  ),
SizedBox(width: 10),
   OutlinedButton( 
    child: Text('Tất cả bạn bè'),
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      backgroundColor: Colors.grey[200],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))), 
    ),
    onPressed: () {
      
    },
  )
],),), 
 Divider(),
Container(padding: EdgeInsets.only(left: 20,right:20,top: 7,bottom: 7),height: 50,child:Row(children: [
  Expanded(child: Text('Lời mời tất cả',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),)),
  TextButton (
                  child: Text("Xem tất cả", style: TextStyle(color: Colors.blue),),
                  onPressed: () {},
                ),


],),),


 
      Frequest('images/khoa.jpg', '2 bạn chung', 'Nguyễn Văn Khoa', '2 năm trước'),
      Frequest('images/tai.jpg', '1 bạn chung', 'Tài Trần', '7 năm trước'),
      Frequest('images/hlong.jpg', '156 bạn chung', 'Hoàng Long', '17 năm trước'),
      Frequest('images/pLong.jpg', '9 bạn chung', 'Phi Long', '18 năm trước'),
      Frequest('images/duc.jpg', '11 bạn chung', 'Nguyễn Minh Đức', '30 năm trước'),
      Frequest('images/tan.jpg', '11 bạn chung', 'Tan Nguyen', '300 năm trước'),
      
      
      ]);

    return 
    DefaultTabController(
        length: 3,
  
    child :Scaffold(
      
      
      appBar: AppBar(
        bottom: const TabBar(
              tabs: [

                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.notifications)),
              ],
            ),
        title: Text(widget.title),
      ),
      body: TabBarView(
            children: [
              friendScreen,
InfomationScreen,
              Icon(Icons.directions_bike),
            ],
          ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
