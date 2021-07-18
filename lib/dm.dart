import 'package:flutter/material.dart';

class Message {
  final String id;
  final String pic;
  final String name;
  final String quote;
  final String time;
  Message(
      {required this.id,
      required this.pic,
      required this.name,
      required this.quote,
      required this.time});
}

final List<Message> messages = [
  Message(
      id: '1',
      pic:
          'https://img.starbiz.com/resize/480x-/2020/02/11/amber-heard-2a66.jpg',
      name: 'joshua_I',
      quote: 'Have a nice day',
      time: 'now'),
  Message(
      id: '1',
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuSr1tstFfrTm-a2J9oly7zqYJPUm6adGKyg&usqp=CAU',
      name: 'karenne',
      quote: 'Great!',
      time: 'now'),
  Message(
      id: '1',
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpdSF5jpFw8yVy1c4JdTZL1RilXWNe4UKzAA&usqp=CAU',
      name: 'matrini',
      quote: 'See you soon',
      time: '15m'),
  Message(
      id: '1',
      pic:
          'https://gumlet.assettype.com/freepressjournal%2Fimport%2F2017%2F10%2FTom-Cruise.jpg?auto=format%2Ccompress&w=1200',
      name: 'andrewww',
      quote: 'Sounds good',
      time: '20m'),
  Message(
      id: '1',
      pic: 'https://images-na.ssl-images-amazon.com/images/I/41W6DBZLsxL.jpg',
      name: 'kiero',
      quote: 'Thankyou',
      time: '1h'),
  Message(
      id: '1',
      pic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSooCGXb23FrZYGvLonrV91Ce-6IVQuvELf6w&usqp=CAU',
      name: 'jamie',
      quote: 'The next design will be',
      time: '2h'),
  Message(
      id: '1',
      pic:
          'https://i.pinimg.com/originals/e4/0f/45/e40f45cfdf444cd9141dfead7eab81ed.jpg',
      name: 'zack',
      quote: 'I am going to travel',
      time: '4h'),
  Message(
      id: '1',
      pic:
          'https://static.toiimg.com/thumb/67961180.cms?width=680&height=512&imgsize=1035835',
      name: 'humphery',
      quote: 'On monday',
      time: '5h'),
  Message(
      id: '1',
      pic:
          'https://www.pinkvilla.com/files/styles/contentpreview/public/tomh_0.jpg?itok=9C7Lagh2',
      name: 'diana',
      quote: 'Tomooo',
      time: '10h'),
  Message(
      id: '1',
      pic:
          'https://hollywoodactressname.com/wp-content/uploads/2019/01/Emma-Watson.jpg?x20028',
      name: 'johnn',
      quote: 'I know right!',
      time: '1d')
];

class Dm extends StatelessWidget {
  const Dm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'candy_xoxo',
                style: TextStyle(color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 35,
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          // leading: IconButton(
          //     onPressed: () {}, color: Colors.black, icon: Icon(Icons.preview)),
          actions: [
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 95.0),
            //     child: Text(
            //       'candy_xoxo  ',
            //       style: TextStyle(color: Colors.black),
            //     ),
            //   ),
            // ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Container(
                  height: 38,
                  child: const TextField(
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
              ),
              //ListView(),

              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(messages[index].pic),
                    ),
                    trailing: Icon(Icons.camera_alt),
                    title: Text(messages[index].name),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(messages[index].quote),
                        Text(messages[index].time)
                      ],
                    ),
                  );
                },
              ),

              //https://images.statusfacebook.com/profile_pictures/girl_with_dog/girl_with_dog_facebook_profile_pictures_02.jpg
            ],
          ),
        ),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  color: Colors.blue,
                ),
                Text(
                  'Camera',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ));
  }
}
