import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  bool like = false;
  int i = 1000;
  //String array of 5 elements
  List<String> fav = [
    'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium',
    'https://media.istockphoto.com/vectors/abstract-blurred-colorful-background-vector-id1248542684?k=20&m=1248542684&s=612x612&w=0&h=1yKiRrtPhiqUJXS_yJDwMGVHVkYRk2pJX4PG3TT4ZYM=',
    'https://static.vecteezy.com/system/resources/previews/002/977/735/original/colorful-abstract-background-free-vector.jpg',
    'https://enkerai.com/wp-content/uploads/2020/05/0mkG7Y.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMLrdKdMeVfWSNq7ZzPoxEG55MyEkQvdTQkAYbVQbNNNqKn-zxSJdoRf24We5GP8zw4oI&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    void likeButton(bool l) {
      setState(() {
        like = !like;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                  child: const Icon(
                Icons.tag_rounded,
                size: 29,
                color: Colors.yellow,
              )),
              TextSpan(
                  text: 'Dawgstels ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //A full screen photo with bottom like option
          children: [
            //Add Big Square picture

            Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Row(
                    children: [
                      //Circular avatar
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 4, right: 15, top: 20, bottom: 6),
                        child: Container(
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.orange,
                            backgroundImage: NetworkImage(fav[1]),
                          ),
                        ),
                      ),
                      //Username in text with verified tick
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 5, top: 10, bottom: 6),
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'molly ',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
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
                        ),
                      ),
                      // share icon
                      //kebab Menu icon

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 200, right: 10, top: 10, bottom: 6),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) => CupertinoAlertDialog(
                                  title: Text(
                                    'Oops',
                                  ),
                                  content: Text(
                                    'I was out of Ideas',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  actions: [
                                    CupertinoDialogAction(
                                      child: Text(
                                        "OK",
                                      ),
                                      isDefaultAction: true,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    CupertinoDialogAction(
                                      isDestructiveAction: true,
                                      child: Text(
                                        'No Problem',
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.more_vert_rounded,
                              color: Color.fromARGB(255, 244, 244, 244),
                              size: 27,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //border round
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),

                  height: 330,
                  width: 407,
                  child: Image.network(
                    fav[i % 5],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            //Like Button
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: like == false
                      ? Colors.white
                      : Color.fromARGB(255, 254, 246, 0),
                ),
                child: IconButton(
                  icon: like == false
                      ? Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        )
                      : Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 30,
                        ),
                  onPressed: () {
                    likeButton(like);
                    print(like);
                  },
                ),
              ),
            ),
            //Left and right arrow for navigation
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 50,
                    splashColor: Colors.cyan,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 0, 240, 252),
                    ),
                    onPressed: () {
                      setState(() {
                        i--;
                      });
                    },
                  ),
                  IconButton(
                    iconSize: 50,
                    splashColor: Colors.cyan,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 0, 255, 242),
                      // size: 50,
                    ),
                    onPressed: () {
                      setState(() {
                        i++;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
