// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:insta_clone/activity.dart';
// import 'package:insta_clone/grid.dart';
// import 'package:insta_clone/insta.dart';
// //import 'package:insta_clone/insta.dart';
// //import 'package:insta_clone/onboarding.dart';
// import 'package:insta_clone/profile.dart';
// //import 'package:insta_clone/reels.dart';

// class Tabbar extends StatefulWidget {
//   @override
//   _TabbarState createState() => _TabbarState();
// }

// class _TabbarState extends State<Tabbar> {
//   PageController pageController = PageController();
//   int pageIndex = 0;
//   @override
//   void initState() {
//     pageController = PageController();
//     super.initState();
//   }

//   onPageChanged(int pageIndex) {
//     setState(() {
//       this.pageIndex = pageIndex;
//     });
//   }

//   onTap(int pageIndex) {
//     pageController.animateToPage(
//       pageIndex,
//       duration: Duration(milliseconds: 12),
//       curve: Curves.linear,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // body: PageView(
//         //   children: [Insta(), Grid(), Reels(), Activity(), Profile()],
//         //   controller: pageController,
//         //   onPageChanged: onPageChanged,
//         //   physics: NeverScrollableScrollPhysics(),
//         // ),
//         //bottomNavigationBar: CupertinoTabBar(
//         //currentIndex: 0,
//         // items: [BottomNavigationBarItem(icon: Icon(Icons.home))],
//         bottomNavigationBar: new Container(
//       color: Colors.white,
//       height: 50.0,
//       alignment: Alignment.center,
//       child: new BottomAppBar(
//           child: new Row(
//               // alignment: MainAxisAlignment.spaceAround,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//             new IconButton(
//               icon: Icon(
//                 Icons.home,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Insta()),
//                 );
//               },
//             ),
//             new IconButton(
//               icon: Icon(
//                 Icons.search,
//               ),
//               onPressed: () {
//                 // pageController.animateToPage(
//                 //   pageIndex,
//                 //   duration: Duration(milliseconds: 12),
//                 //   curve: Curves.linear,
//                 // );
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Grid()),
//                 );
//               },
//             ),
//             new IconButton(
//               icon: Icon(
//                 Icons.add_box,
//               ),
//               onPressed: null,
//             ),
//             new IconButton(
//               icon: Icon(
//                 Icons.favorite,
//               ),
//               onPressed: null,
//             ),

//             // GestureDetector(
//             //   onTap: () {},
//             // ),
//             GestureDetector(
//               onTap: () {
//                 print('hii');
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Profile()),
//                 );
//               },
//               child: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     'https://i.pinimg.com/originals/5f/ed/99/5fed99b862abca9fc5bea96c60760c06.png'),
//                 radius: 11,
//               ),
//             ),
//             // bottomNavigationBar: CupertinoTabBar(
//             //   currentIndex: pageIndex,
//             //   onTap: onTap,
//             //   activeColor: Colors.black,
//             //   items: [
//             //     BottomNavigationBarItem(icon: Icon(Icons.home)),
//             //     BottomNavigationBarItem(icon: Icon(Icons.search)),

//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.add_box_rounded),
//             //     ),
//             //     BottomNavigationBarItem(icon: Icon(Icons.favorite)),
//             //     BottomNavigationBarItem(
//             //         icon: CircleAvatar(
//             //             backgroundImage: NetworkImage(
//             //                 'https://i.pinimg.com/originals/5f/ed/99/5fed99b862abca9fc5bea96c60760c06.png'),
//             //             radius: 14,
//             //             child: null
//             //             // Icon(Icons.circle_outlined)
//             //             ))
//             //     // BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
//             //   ],
//             // ),
//           ])),
//     ));
//   }
// }

import 'package:flutter/material.dart';

class Listv extends StatelessWidget {
  const Listv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListTile(
      leading: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9adoQowYlnsrYZa3SLMVazJzc7GfQmApqLRlDjsUUmgH5F-XX30DrK3HFP6Hx6awzIbg&usqp=CAU'),
    ));
  }
}
