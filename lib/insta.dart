import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/dm.dart';
import 'package:insta_clone/gradient_ring_widget.dart';
import 'package:insta_clone/grid.dart';
import 'package:insta_clone/profile.dart';
import 'package:insta_clone/activity.dart';
import 'package:insta_clone/reels.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter_example/icons.dart';
//import 'package:insta_clone/login.dart';
class Snap {
  final String id;
  final String pic;
  final String title;
  final String subtitle;
  final String post;
  final String caption;
  final String likepic;
  final String others;

  Snap({
    required this.id,
    required this.pic,
    required this.title,
    required this.subtitle,
    required this.post,
    required this.caption,
    required this.likepic,
    required this.others,
  });
}

final List<Snap> snaps = [
  Snap(
      id: '1',
      pic:
          'https://www.pinkvilla.com/files/styles/contentpreview/public/tomh_0.jpg?itok=9C7Lagh2',
      title: 'richuy.jo',
      subtitle: 'Paris, France',
      post:
          'https://i.pinimg.com/736x/ea/8c/75/ea8c75a17c9df021f34cc73d0dbb12a0.jpg',
      caption: 'richuy.jo  Be young and free, live life with no regrets!',
      likepic:
          'https://cdn.britannica.com/32/201632-050-66971649/actress-Margot-Robbie-Australian-2018.jpg',
      others: 'liked by carig and 40,990 others'),
  Snap(
      id: '2',
      pic:
          'https://i.pinimg.com/736x/1b/5f/e3/1b5fe32470a9baf1a29f114ba69e7805.jpg',
      title: 'meryy.leo',
      subtitle: 'Agra, India',
      post:
          'https://i.pinimg.com/originals/ed/18/0c/ed180cf8ed16b4cff018a43743c9317b.jpg',
      caption: 'meryy.leo  Love the way it is!',
      likepic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWaOJtBgXcnWu4pN-IkMaYKQzfk3DfGZxYw&usqp=CAU',
      others: 'liked by mithyi and 80,090 others'),
  Snap(
      id: '3',
      pic:
          'https://www.biography.com/.image/ar_8:10%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_620/MTU3NjM3MjA0NjA3MjQ4MzQ4/charlie-hunnam-attends-the-papillon-premiere-during-the-2017-toronto-international-film-festival-at-princess-of-wales-theatre-on-september-7-2017-in-toronto-canada-photo-by-j-merritt_gc-images-square.jpg',
      title: 'romio.m',
      subtitle: 'Russia',
      post:
          'https://i.pinimg.com/originals/e9/54/a8/e954a8341c456dd261661a3b2bdff10b.jpg',
      caption: 'romio.m  Be you!',
      likepic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjyyeNNH7Cg3dNQKSen6f5Gu79mu171k9EAQ&usqp=CAU',
      others: 'liked by anaya and 90,990 others'),
  Snap(
      id: '4',
      pic:
          'https://pickytop.com/wp-content/uploads/2020/03/Beautiful-Hollywood-Actress-1-1.jpg',
      title: 'akky.pi',
      subtitle: 'Dubai',
      post:
          'https://a0.muscache.com/im/pictures/lombard/MtTemplate-1550332-media_library/original/66597153-5f88-4580-9750-fe0a8d5d3349.jpeg?im_w=720',
      caption: 'akky.pi  Say yes to adventures!',
      likepic:
          'https://img.starbiz.com/resize/480x-/2020/02/11/amber-heard-2a66.jpg',
      others: 'liked by sanyia and 49,990 others'),
  Snap(
      id: '5',
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyNxZxbxbfp9wgwir093tuB59Y4IiATm15Wg&usqp=CAU',
      title: 'lucifiy.er',
      subtitle: 'Singapore',
      post:
          'https://static.amazon.jobs/locations/39/thumbnails/singapore_CareersPage_Mobile.jpg?1500475719',
      caption: 'lucifiy.er  Be happy and enjoy present!!',
      likepic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPZwMXUjdZLLDly3wxPFloHiWL09A6vVAQdA&usqp=CAU',
      others: 'liked by lomo and 60,990 others')
];

class Insta extends StatelessWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool liked = false;
    return Scaffold(
        //  resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.camera_alt),
          ),

          // title: Text(
          //   "Instagram",
          //   style: TextStyle(
          //     fontFamily: "instagram",
          //     color: Colors.black,
          //     fontSize: 30,
          //   ),
          // ),
          actions: [
            // Image(

            //     image: NetworkImage(
            //         'https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png')

            //         ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Image(
                image: NetworkImage(
                    'https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png'),
                //height: 00,
                // width: 250,
                //alignment: Alignment.centerRight,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.live_tv),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dm()),
                );
              },
              icon: Icon(Icons.send),
              color: Colors.black,
            )
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [BottomNavigationBarItem(icon: Icon(Icons.home))],
        // ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                //backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://iglives.tv/wp-content/uploads/2020/02/kenzie_feb28.jpg'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Your Story'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                //  backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYagRN1RZADLydTzjy2FaF1HKHg4He47YwQ0Hp77tAGQc7pHuQVInhmj8ruLEe_V8J5XE&usqp=CAU'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('craig'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://mediakix.com/wp-content/uploads/2018/09/creative-instagram-influencers-1024x683.jpg'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('zackon'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://data.whicdn.com/images/333665058/original.jpg?t=1564930534'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('kieron'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                //backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR_-_ROwxxKSz5pGscZHVnYqrKpGR4nwbeVg&usqp=CAU'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('diana'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                //  backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU66zsJnQiJQsNAH-WmnF1v-1JKVYPxvu-2tswTUFqVi-8GNkZmcfRew67zAQTt6J3wnE&usqp=CAU'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('rayy'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://wallpapercave.com/wp/xt2DuKK.jpg'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('sammy'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            WGradientRing(
                              child: CircleAvatar(
                                backgroundColor: Colors.brown.shade800,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfm7gA2ga9NxfoXHM0-Opb6q5ulwHirukLS2qv5nsVZqYXXmms-V7y12aPBYIeALzf-EU&usqp=CAU'),
                                radius: 25,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text('nikks'),
                          ],
                        ),
                      ],
                    )),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: snaps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 7),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(snaps[index].pic),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snaps[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(snaps[index].subtitle),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Image.network(
                        snaps[index].post,
                        height: MediaQuery.of(context).size.height / 2,
                        //width: MediaQuery.of(context).size.width / 2,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              liked = true;
                              final snackBar = SnackBar(
                                content: Text('You liked the post!'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () {
                                    // Some code to undo the change.
                                  },
                                ),
                              );

                              // Find the ScaffoldMessenger in the widget tree
                              // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            icon: Icon(liked
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined),
                            color: liked ? Colors.red : Colors.black,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment_outlined)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                          // SizedBox(
                          //   width: 215,
                          // ),
                          // IconButton(onPressed: () {}, icon: Icon(Icons.save))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage(snaps[index].likepic),
                              radius: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(snaps[index].others)
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 12, top: 5),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   'candy_xoxo',
                            //   style: TextStyle(fontWeight: FontWeight.bold),
                            // ),
                            // SizedBox(
                            //   width: 5,
                            // ),
                            // Expanded(
                            //   child: Text(
                            //     'candy_xoxo ',
                            //     style: TextStyle(fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                            Expanded(
                              child: Text(
                                snaps[index].caption,
                              ),
                            ),

                            // child: RichText(
                            //   text: TextSpan(
                            //       style: DefaultTextStyle.of(context).style,
                            //       children: [
                            //         TextSpan(
                            //             text: 'candy_xoxo ',
                            //             style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 12,
                            //               color: Colors.black,
                            //               // decoration: TextDecoration.none,
                            //             )),
                            //         TextSpan(
                            //             text:
                            //                 'Be young and free, live a life with no regrets!',
                            //             style: TextStyle(
                            //                 fontWeight: FontWeight.normal,
                            //                 fontSize: 12,
                            //                 color: Colors.black))
                            //       ]
                            //       //  'candy_xoxo Be young and free, live a life with no regrets!',
                            //       // maxLines: 2,
                            //       // softWrap: false,
                            //       // overflow: TextOverflow.clip,
                            //       ),
                            // ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 5,
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),
        ),

        // bottomNavigationBar: CupertinoTabBar(
        //   currentIndex: 0,
        //   items: [BottomNavigationBarItem(icon: Icon(Icons.home))],
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
