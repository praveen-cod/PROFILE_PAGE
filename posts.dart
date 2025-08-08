import 'package:flutter/material.dart';
import 'package:week2/text.dart';

class Posts_inState extends StatefulWidget {
  const Posts_inState({super.key});

  @override
  State<Posts_inState> createState() => __Posts_inStateState();
}

class __Posts_inStateState extends State<Posts_inState> {
  @override
  int _currentIndex = 0;
  double like = 0;
  Color color = Colors.white;
  List img = ['images/car.png','images/computer.png','images/event.png','images/praveen.png','images/paint.png','images/panimalar.png','images/women.png',];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        elevation: 0,
        title: AppText(text: "Posts", color: Colors.white, size: 20,fontWeight: FontWeight.bold,font: 'Poppins',)),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (context,index){
        return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color:Colors.black,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image:DecorationImage(image: AssetImage(img[3]),
                      fit: BoxFit.contain
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  AppText(text: "__peace_dude_505", color: Colors.white, size: 17,font: 'Poppins',fontWeight: FontWeight.w500,),
                  SizedBox(width: 95,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,),)
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.2,
              width:MediaQuery.of(context).size.width ,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(img[index]),fit: BoxFit.fill)
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.black,
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: () {
                      
                    },
                    child: AppText(text: "View insights", color: Colors.white, size: 16,fontWeight: FontWeight.bold,)),
                    SizedBox(width: 100,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 130,
                          padding: EdgeInsets.only(top: 3,),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white,width: 2),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: AppText(text: "Boost Post", color: Colors.white, size: 15,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                        ),
                      ),
                    )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      like++;
                      color = Colors.red;
                    });
                  }, icon: Icon(Icons.favorite,size: 33,),color: color,iconSize: 25,),SizedBox(width: 2,),
                  AppText(text: like.toInt().toString(), color: Colors.white, size: 15,fontWeight: FontWeight.bold,),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.messenger_outline_rounded,size: 28,),color: Colors.white,),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined,size: 28,),color: Colors.white,),
                  SizedBox(width: 150,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.save_alt_rounded,size: 28,),color: Colors.white,)
                ],
              ),
            ),
             
          ],
        )
      );
      }),
       bottomNavigationBar:  BottomNavigationBar(
               currentIndex: _currentIndex,
    onTap: (index) {
      setState(() {
        _currentIndex = index;
      });
    },
  backgroundColor: Colors.black,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.grey,
  showUnselectedLabels: false,
  type: BottomNavigationBarType.fixed,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_rounded),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: "Add",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.play_arrow_outlined),
      label: "Reels",
    ),
    BottomNavigationBarItem(
      icon: IconButton(onPressed: (){
        setState(() {
          Navigator.pop(context);
        });
      }, icon: Icon(Icons.person_2_outlined)),
      label: "Profile",
    ),
  ],
),
    );
  }
}