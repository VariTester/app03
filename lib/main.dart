// import 'dart:html';

import 'package:app03/style/colors.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'style/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

   
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Gordita',
      
      ),

      home: const CategoryPage(),  
    );
  }
}

// class CategoryPage extends StatelessWidget{
//   const CategoryPage({Key? key}) : super(key: Key);

//   @override 
//   Widget build(BuildContext context){
//     return Scaffold();
//   }



// }

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(223, 110, 3, 99),
        
        items: [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '',
            backgroundColor: Color.fromARGB(0, 164, 18, 18),

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '',
            backgroundColor: Color.fromARGB(0, 251, 252, 252),

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            backgroundColor: Color.fromARGB(0, 33, 149, 243),

          ),

        ],
        


      ),
      body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(left:10),
              height: size.height / 1,
              //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
              width: size.width,
              decoration: const BoxDecoration(
                color: AppColors.purple,
                 image: DecorationImage(
                  image: AssetImage('assets/gradientPurple.jpg'),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,

                  
                  ),),
              child:  SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10
                      ),
                      Row(
                        children: [
                          
                          SvgPicture.asset('assets/back.svg',height: 20,),    
                          const SizedBox(width: 5),                    
                          Text('Back', style:AppStyle.m12w),
                        ],
                      ),
                      const SizedBox(
                        height: 16
                      ),
                     
                      Text('Clasiffy Transaction',style: AppStyle.b32w,),

                      const SizedBox(
                        height: 4
                      ),
                     
                      Text('Clasiffy this transaction into a particular category',style: AppStyle.r12w,)
                      

                    ], 

                  ),
                  ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal:24,vertical: 20),
              height: size.height - (size.height / 4.56),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,borderRadius: BorderRadius.circular(34)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('All', style: AppStyle.m12b.copyWith(decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        width: 30
                        ), 
                      Text('Favourite',style: AppStyle.m12bt),
                      const SizedBox(
                        width: 30
                      ),
                      Text('Recomended',style: AppStyle.m12bt),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:7.0,vertical: 12.0 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                      
                            children:  const[
                               LongCourseCard(background: Color.fromARGB(255, 148, 21, 141), title: 'General', subtitle: '', 
                               image: 'assets/general.png'),
                               ShortTopCourseCard(background: AppColors.orange, title: 'Shopping', subtitle: '', image: 'assets/shopping.png'),
                               ShortTopCourseCard(background: AppColors.red, title: 'Entertainment', subtitle: '', image: 'assets/entretenimiento.png'),
                            ],
                          ),
                          Column(
                            children: const [
                              ShortTopCourseCard(background: AppColors.purple, title: 'Transport', subtitle: '', image: 'assets/transport.png'),
                               
                               LongCourseCard(background: Color.fromARGB(255, 148, 21, 141), title: 'Music', subtitle: '', image: 'assets/music.png'),
                               ShortTopCourseCard(background: AppColors.green, title: 'Food', subtitle: '', image: 'assets/food.png'),
                            ],
                            
                          ),
                          
                        ],
                        
                        
                        
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],),
    );
  }
}

class LongCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String subtitle;
  final String image;

  const LongCourseCard({Key? key, required this.background, required this.title, required this.subtitle, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(34),
        border: Border.all(color: Colors.white,width: 5),
        boxShadow: [BoxShadow(
          blurRadius: 50,
          color: const Color(0xFF0B0C2A).withOpacity(.09),
          offset: const Offset(10,10))
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(title,style: AppStyle.r12w),
              Text(subtitle,style: AppStyle.r10wt),
              Expanded(child: Image.asset(image)),
            ],
          ),
    );
  }
}
class ShortTopCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String subtitle;
  final String image;

  const ShortTopCourseCard({Key? key, required this.background, required this.title, required this.subtitle, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.only(bottom: 20),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(34),
        border: Border.all(color: Colors.white,width: 5),
        boxShadow: [BoxShadow(
          blurRadius: 50,
          color: const Color(0xFF0B0C2A).withOpacity(.09),
          offset: const Offset(10,10))
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(title,style: AppStyle.r12w),
              Text(subtitle,style: AppStyle.r10wt),
              Expanded(child: Image.asset(image)),
            ],
          ),
    );
  }
}

class ShortBottomCourseCard extends StatelessWidget {
  final Color background;
  final String title;
  final String subtitle;
  final String image;

  const ShortBottomCourseCard({Key? key, required this.background, required this.title, required this.subtitle, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.only(bottom: 4),
      width: 155,
      height: 163,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(34),
        border: Border.all(color: Colors.white,width: 10),
        boxShadow: [BoxShadow(
          blurRadius: 50,
          color: const Color(0xFF0B0C2A).withOpacity(.09),
          offset: const Offset(10,10))
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 12),
              Expanded(child: Image.asset(image)),
              Text(title,style: AppStyle.r12w),
              Text(subtitle,style: AppStyle.r10wt),
              const SizedBox(height: 20),
              
            ],
          ),
    );
  }
}