import 'package:flutter/material.dart';

void main() {
  runApp( DynamicList());
}

class DynamicList extends StatelessWidget{
  DynamicList({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

   var MyItems=[
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sirajul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Ebrahim"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Aman"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sadi"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Yousuf"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sudipto"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rakib"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rajesh"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Abdullah"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Shahidul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Fahad"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Mahibul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sirajul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Ebrahim"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Aman"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sadi"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Yousuf"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sudipto"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rakib"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rajesh"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Abdullah"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Shahidul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Fahad"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Mahibul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sirajul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Ebrahim"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Aman"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sadi"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Yousuf"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Sudipto"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rakib"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Rajesh"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Abdullah"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Shahidul"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Fahad"},
     {"img":"https://cdn.rabbil.com/photos/images/2022/12/27/flutterS.png","title":"Flutter Mahibul"},

   ];
   
   mySnackBar(context,msg){
     return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
   }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List / Grid View"),
      ),

        //ListViewBuilder
      /*  body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onLongPress: (){mySnackBar(context, MyItems[index]['title']);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
            ),
          );
        },
      )*/

      //GirdView Buider
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            childAspectRatio: 1.2
          ) ,
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onLongPress: (){mySnackBar(context, MyItems[index]['title']);},
              child: Container(
                margin: EdgeInsets.all(05),
                width: double.infinity,
                height: 250,
                child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
              ),
            );
          },
        )
    );
  }
}