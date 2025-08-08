import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week2/text.dart';
class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Color color = Colors.white;
  Color color1 = Colors.white;
  double post = 0;
  double follower = 270;
  int _currentIndex = 0;
  double follwing = 210;
  List img = ['images/car.png','images/computer.png','images/event.png','images/praveen.png','images/paint.png','images/panimalar.png','images/women.png',];
  List text1 = ['car','computer','event','Me','Paintings','clg','MyQueen',];
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenWidth1 = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: AppText(text: "__peace_dude_505", color: Colors.white,font: 'Poppins',size: 20,fontWeight: FontWeight.bold,),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              
            });
          },
          
         icon: Icon(Icons.add_a_photo_outlined,color: color1,)),
          IconButton(onPressed: (){
            setState(() {
             
            });
          }, icon: Icon(Icons.more_vert,color: color,))
    
        ],
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
               Stack(
                      children: [
            Container(
              margin: EdgeInsets.only(left:10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
            image: AssetImage('images/praveen.png',),
            fit: BoxFit.cover,
                      ),
                    ),
            ),
            Positioned(
                    bottom: 0, 
                    right: 0,   
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
                      ),
                      child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.black, size: 20),
                      ),
                    ),
            ),
                      ],
                    ),
                    Column(
                      children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: AppText(text: "Praveen K", color: Colors.white, size: 19,font: 'Poppins',fontWeight: FontWeight.bold,)),
            SizedBox(height: 0),
            AppText(text: img.length.toString(), color: Colors.white, size: 15,fontWeight: FontWeight.bold,),
            SizedBox(height: 7,),
            AppText(text: "Posts", color: Colors.white, size: 15,fontWeight: FontWeight.w400,)
                      ],
                    ),
                    
               Column(
                    children: [
                      SizedBox(height: 33,),
                       AppText(text: follower.toInt().toString(), color: Colors.white, size: 15,fontWeight: FontWeight.bold,),
            SizedBox(height: 7,),
            AppText(text: "Followers", color: Colors.white, size: 15,fontWeight: FontWeight.w400,)
                    ],
               ),
               SizedBox(width:16,),
                    Expanded(
                      child: Column(
                      children: [
                        SizedBox(height: 33,),
                         AppText(text: follwing.toInt().toString(), color: Colors.white, size: 15,fontWeight: FontWeight.bold,),
                                  SizedBox(height: 7,),
                                  AppText(text: "Following", color: Colors.white, size: 15,fontWeight: FontWeight.w400,)
                      ],
                                     ),
                    ),
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
               Text("🌿 Just a guy who loves nature & good vibes.\n"
                "📍 Chennai | 🎓 Student | 📸 Capturing memories."
                "Stay real, stay humble.\n",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,),fontWeight: FontWeight.w500,),textAlign: TextAlign.start,)
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 70,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: AppText(text: "Professional dashboard", color:Colors.white, size:18,fontWeight: FontWeight.w500,font: 'Poppins',),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.north_east,color: Colors.green,size: 17,),
                        AppText(text: "3.2T views in the last 30 days", color:Colors.grey, size:14,fontWeight: FontWeight.w500,font: 'Poppins',),
                      ],
                    )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                    
                    },
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 5),
                      width: screenWidth1/2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: AppText(text: "Edit Profile", color: Colors.white, size: 18,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                  
                    },
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 5),
                      width: screenWidth1/2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: AppText(text: "Share Profile", color: Colors.white, size: 18,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
                    ),
                  ),
                )
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount:img.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Column(
                children: [
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(image: AssetImage(img[index]),fit: BoxFit.contain)
                      ),
                    ),
                  ),
                  SizedBox(height: 3,),
                  AppText(text: text1[index], color: Colors.white, size: 15,fontWeight: FontWeight.w400,)
                ],
              );
            })),
            Expanded(
  child: GridView.builder(
    padding: EdgeInsets.all(5),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 1,
    ),
    itemCount: img.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/post');
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  ),
),

            BottomNavigationBar(
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
      icon: Icon(Icons.person_2_outlined),
      label: "Profile",
    ),
  ],
),
          ],
        ),
      ),
    
    );
  }
}