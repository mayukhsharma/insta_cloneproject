import 'package:flutter/material.dart';
import 'package:insta_clone/insta.dart';
import 'package:insta_clone/grid.dart';
import 'package:insta_clone/activity.dart';
import 'package:insta_clone/reels.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.lock),
                  color: Colors.black,
                  iconSize: 18,
                ),
                Text(
                  'candy_xoxo',
                  style: TextStyle(color: Colors.black),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down),
                  color: Colors.black,
                  iconSize: 35,
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // CircleAvatar(
                      //   backgroundImage: NetworkImage(
                      //       'https://static.toiimg.com/photo/msid-67586673/67586673.jpg?3918697'),

                      // )
                      CircleAvatar(
                        radius: 47,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://iglives.tv/wp-content/uploads/2020/02/kenzie_feb28.jpg'),
                          radius: 45,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '54',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '834',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '162',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Jacob West',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Digital goodies designer ',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Everything is designed',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),

                // MaterialButton(
                //     onPressed: () {},
                //     child: Text('Edit Profile'),
                //     textColor: Colors.black,
                //     color: Colors.white,
                //     elevation: 0,

                //     )
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 400,
                    height: 35,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white60,
                          side: BorderSide(color: Colors.black12)),
                    ),
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(3),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://femina.wwmindia.com/content/2020/jul/fashion41593784263.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://p.favim.com/orig/2018/10/09/clouds-artsy-sunrise-Favim.com-6397678.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://i.pinimg.com/originals/51/58/c3/5158c3b61ef315e410967a87bed3c906.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://imgix.bustle.com/uploads/image/2018/2/13/9fefa53c-39ce-41e9-a5e7-31ad30537762-25035977_157565418198938_5673729700132814848_n.jpg?w=1200&fit=crop&crop=faces&auto=format%2Ccompress'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk8lTSVcFa-ZqcBWCEmoR6UA2p78NCTOhFWQ&usqp=CAU'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://i.pinimg.com/originals/f0/74/18/f0741897ea51d515d89920ccdfc0af40.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://i.pinimg.com/474x/83/03/ff/8303ff387ec7901954962cd8be98fae1.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUWXdXUl_r4hcHGcsfH2nj_c5Jjr48krQaZg&usqp=CAU'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://lh5.googleusercontent.com/proxy/q7BqCGOWb41wYLwdH8EDFDFGBKY-MFYd9-KmLPIdMdetoZd4vnLNwc9QcXJ44kV_WR6I7aOBpLX7yd01QvK2M-PfAVVjExAX2NjdZmmhJhMxF9ormpxtzdcc4OOqQERV4fX5nadPHp0caQM=s0-d'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://i.pinimg.com/736x/d1/94/17/d194177bb903882273ad1ec988e52623.jpg'),
                      //color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      child: Image.network(
                          'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
                      //color: Colors.teal[100],
                    ),
                  ],
                )

                // new StaggeredGridView.countBuilder(
                //   shrinkWrap: true,
                //   crossAxisCount: 4,
                //   itemCount: 12,
                //   itemBuilder: (BuildContext context, int index) =>
                //       new Container(
                //     color: Colors.black38,
                //     child: null,
                //   ),
                //   staggeredTileBuilder: (int index) =>
                //       new StaggeredTile.count(2, index.isEven ? 2 : 1),
                //   mainAxisSpacing: 4.0,
                //   crossAxisSpacing: 4.0,
                // )
              ],
            ),
          ),
        ),
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
