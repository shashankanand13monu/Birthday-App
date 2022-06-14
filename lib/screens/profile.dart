// ignore_for_file: deprecated_member_use

import 'package:cord/screens/easter.dart';
import 'package:cord/screens/image.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isfollowing = false;
  bool _hov = false;
  final List<Image> img = [
    Image.network(
      'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://media.istockphoto.com/vectors/abstract-blurred-colorful-background-vector-id1248542684?k=20&m=1248542684&s=612x612&w=0&h=1yKiRrtPhiqUJXS_yJDwMGVHVkYRk2pJX4PG3TT4ZYM=',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://static.vecteezy.com/system/resources/previews/002/977/735/original/colorful-abstract-background-free-vector.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMLrdKdMeVfWSNq7ZzPoxEG55MyEkQvdTQkAYbVQbNNNqKn-zxSJdoRf24We5GP8zw4oI&usqp=CAU',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium',
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: '@Profile ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              WidgetSpan(
                  child: const Icon(
                Icons.verified_rounded,
                size: 18,
                color: Colors.blue,
              )),
            ],
          ),
        ),
        centerTitle: false,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              //Display Followers and following
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.orange,
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium'),
                          ),
                          // Name in text
                          Row(
                            children: [
                              Text(
                                'dawgs_tels',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            img.length.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _isfollowing == false
                              ? Text(
                                  '172',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  '173',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _isfollowing == false
                              ? Text(
                                  '21.7K',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  '81.5K',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Follow Button in blue color
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 150),
                        height: 30,
                        width: 340,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: _isfollowing == false
                                ? Colors.blue
                                : Colors.transparent,
                            side: BorderSide(
                              width: 1.0,
                              color: _isfollowing == true
                                  ? Colors.white
                                  : Colors.blue,
                            ),
                          ),
                          onHover: (value) {
                            if (_isfollowing) {
                              setState(() {
                                _hov = value;
                              });
                            }
                          },
                          onPressed: () {
                            setState(() {
                              _isfollowing = !_isfollowing;
                            });
                          },
                          child: _isfollowing == false
                              ? Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )
                              : _hov == true
                                  ? Text(
                                      'Unfollow',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 249, 3, 3),
                                        fontSize: 18,
                                      ),
                                    )
                                  : Text(
                                      'Following',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            StreamBuilder<Object>(
                stream: null,
                builder: (context, snapshot) {
                  return GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    shrinkWrap: true,
                    children: [
                      for (int i = 0; i < img.length; i++)
                        GestureDetector(
                          onTap: () {
                            print(i);
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ImageDisplay(url: i,imag: img,)));
                            // Print the image url
                            print(img[i]);

                            
                          },
                          child: Container(
                            child: img[i],
                          ),
                        ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
