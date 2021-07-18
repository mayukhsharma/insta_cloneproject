import 'package:flutter/material.dart';
//import 'package:insta_clone/bottomnav.dart';
import 'package:insta_clone/insta.dart';
import 'package:insta_clone/profile.dart';
import 'package:insta_clone/reels.dart';
import 'package:insta_clone/activity.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Pic {
  final String pic;
  Pic({
    required this.pic,
  });
}

final List<Pic> pics = [
  Pic(
      pic:
          'https://media-exp1.licdn.com/dms/image/C4D1BAQEn5eKROvoOGg/company-background_10000/0/1620247790438?e=2159024400&v=beta&t=gZYEEb3PNlOQJI2o9jFC-eutLUuXdLzN77mvbNHQ2A4'),
  Pic(
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3cIwNxCjHVvwC3GU4CeFL3MwLwDt1_NKRHg&usqp=CAU'),
  Pic(
      pic:
          'https://thumbs.dreamstime.com/z/happy-father-s-day-background-card-top-view-149108551.jpg'),
  Pic(
      pic:
          'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/3/22/0/FNCC_bobby-flay-salmon-brown-sugar-mustard_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382541357316.jpeg'),
  Pic(
      pic:
          'https://www.befunky.com/images/wp/wp-2020-01-YouTube-Thumbnail-Size-2020.jpg?auto=webp&format=jpg&width=944'),
  Pic(
      pic:
          'https://www.befunky.com/images/wp/wp-2020-01-New-Featured-Image.jpg?auto=webp&format=jpg&width=1200&crop=16:9'),
  Pic(
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSUzcOp_HL7RZgJGfamm4zC10aYotKkHqQJg&usqp=CAU'),
  Pic(
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkoA9xHwfEB-2D5B0HCLqQdQmTAdUn-Qrl9A&usqp=CAU'),
  Pic(
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-b2xXk0QNiwxcqryRjrxQo3sotusJBbmh_g&usqp=CAU'),
  Pic(
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRFSQqDAKPDjGG_c4WDhk0IKwRRuer6qiUKA&usqp=CAU'),
  Pic(
      pic:
          'https://image.cnbcfm.com/api/v1/image/104885873-mac_and_cheese_2.jpg?v=1529476969')
];

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  )),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.live_tv),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'IGTV',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Shop',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Style',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Sports',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Auto',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Love',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // GridView.count(
              //   shrinkWrap: true,
              //   primary: false,
              //   padding: const EdgeInsets.all(3),
              //   crossAxisSpacing: 5,
              //   mainAxisSpacing: 5,
              //   crossAxisCount: 2,
              //   children: <Widget>[
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80'),
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_380,c_fill,g_auto,h_214,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F181127120131-45-50-sweets-travel-borma.jpg'),
              //       height: MediaQuery.of(context).size.height / 2,
              //       width: MediaQuery.of(context).size.width / 2,
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://i.pinimg.com/474x/ae/0c/97/ae0c978cbb0eb5641e8071f38e36182a.jpg'),
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       // color: Colors.teal[100],
              //     ),
              //   ],
              // ),
              // GridView.count(
              //   shrinkWrap: true,
              //   primary: false,
              //   padding: const EdgeInsets.all(3),
              //   crossAxisSpacing: 2,
              //   mainAxisSpacing: 2,
              //   crossAxisCount: 3,
              //   children: <Widget>[
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://femina.wwmindia.com/content/2020/jul/fashion41593784263.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://p.favim.com/orig/2018/10/09/clouds-artsy-sunrise-Favim.com-6397678.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://i.pinimg.com/originals/51/58/c3/5158c3b61ef315e410967a87bed3c906.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://imgix.bustle.com/uploads/image/2018/2/13/9fefa53c-39ce-41e9-a5e7-31ad30537762-25035977_157565418198938_5673729700132814848_n.jpg?w=1200&fit=crop&crop=faces&auto=format%2Ccompress'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8lTSVcFa-ZqcBWCEmoR6UA2p78NCTOhFWQ&usqp=CAU'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://i.pinimg.com/originals/f0/74/18/f0741897ea51d515d89920ccdfc0af40.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://i.pinimg.com/474x/83/03/ff/8303ff387ec7901954962cd8be98fae1.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUWXdXUl_r4hcHGcsfH2nj_c5Jjr48krQaZg&usqp=CAU'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://lh5.googleusercontent.com/proxy/q7BqCGOWb41wYLwdH8EDFDFGBKY-MFYd9-KmLPIdMdetoZd4vnLNwc9QcXJ44kV_WR6I7aOBpLX7yd01QvK2M-PfAVVjExAX2NjdZmmhJhMxF9ormpxtzdcc4OOqQERV4fX5nadPHp0caQM=s0-d'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://i.pinimg.com/736x/d1/94/17/d194177bb903882273ad1ec988e52623.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(2),
              //       child: Image.network(
              //           'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
              //       //color: Colors.teal[100],
              //     ),
              //   ],
              // ),

              new StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                crossAxisCount: 4,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => new Container(
                    //color: Colors.black38,
                    child: Image.network(pics[index].pic)),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                // StaggeredTile.count(2, 8),

                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              )
            ],
          ),
        ),

// GridView.count(
//               padding: const EdgeInsets.all(20),
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               crossAxisCount: 3,
//               children: <Widget>[
//                 Container(
//                   child: Row(
//                     children: [
//                       Row(
//                         children: [
//                           Column(
//                             children: [
//                               Image.network(
//                                   'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
//                               Image.network(
//                                   'https://images.unsplash.com/photo-1471879832106-c7ab9e0cee23?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGV3fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80')
//                             ],
//                           )
//                         ],
//                       ),
//                       Row()
//                     ],
//                   ),
//                 )
//               ],
//             ),

        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Insta()),
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Grid()),
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reels()),
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Activity()),
                    );
                  },
                ),

                // GestureDetector(
                //   onTap: () {},
                // ),
                GestureDetector(
                  onTap: () {
                    print('hii');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://iglives.tv/wp-content/uploads/2020/02/kenzie_feb28.jpg'),
                    radius: 11,
                  ),
                ),

                // new IconButton(
                //   icon: Icon(
                //     Icons.account_box,
                //   ),
                //   onPressed: null,
                // ),
              ],
            ),
          ),
        ));
  }
}
