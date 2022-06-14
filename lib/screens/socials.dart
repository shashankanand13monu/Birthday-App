import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatefulWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  bool egg = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'COOL PASTEL SOCIALS',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Berlin Sans FB Demi',
                    letterSpacing: 1.35,
                    shadows: [
                      Shadow(
                        blurRadius: 10.5,
                        color: Color.fromARGB(255, 255, 255, 255),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  )),
              //Iconbutton of egg
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Add circular avatar
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://media.discordapp.net/attachments/896632177100464138/986184871431004230/bck.jpg?width=368&height=654'),
              ),
              SizedBox(height: 8),
              //Add text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BorderedText(
                    strokeColor: Colors.pink,
                    strokeWidth: 3,
                    child: Text(
                      '@CoolPastel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Berlin Sans FB Demi',
                        letterSpacing: 1.35,
                      ),
                    ),
                  ),
                  IconButton(
                splashRadius: 20,
                iconSize: 20,
                onPressed: () {
                  count++;
                  if (count % 5 == 0) {
                    setState(() {
                      egg = !egg;
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(
                            'Easter Egg',
                          ),
                          content: Text(
                            'Congratulations!! You have unlocked Secret OnlyFans',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          actions: [
                            CupertinoDialogAction(
                              child: Text(
                                "Show",
                              ),
                              isDefaultAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    });
                  }
                },
                icon: Icon(
                  Icons.egg,
                  color: Color.fromARGB(255, 250, 242, 1),
                ),
                alignment: Alignment.center,
              ),

                ],
              ),
              
              SizedBox(height: 20),
              Container(
                width: 240,
                height: 60,
                child: FloatingActionButton(
                  child: BorderedText(
                    child: Text(
                      'Twitter',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url =
                        Uri.parse('https://twitter.com/pastelcolorings');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Color.fromARGB(255, 0, 140, 255),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 240,
                height: 60,
                child: FloatingActionButton(
                  child: BorderedText(
                    child: Text(
                      'Discord',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url = Uri.parse('https://discord.gg/tw7Nsb65hU');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Color.fromARGB(255, 79, 0, 251),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 240,
                height: 60,
                child: FloatingActionButton(
                  child: BorderedText(
                    child: Text(
                      'Twitch',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url =
                        Uri.parse('https://www.twitch.tv/coolpastel');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Color.fromARGB(255, 204, 3, 239),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: egg,
                child: Container(
                  width: 240,
                  height: 60,
                  child: FloatingActionButton(
                    child: BorderedText(
                      child: Text(
                        'Only-Fans',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    splashColor: Colors.white,
                    onPressed: () async {
                      final Uri _url = Uri.parse(
                          'https://www.youtube.com/watch?v=iik25wqIuFo');

                      if (await canLaunchUrl(_url)) {
                        await launchUrl(_url);
                      } else {
                        throw 'Could not launch $_url';
                      }
                    },
                    backgroundColor: Color.fromARGB(255, 0, 140, 255),
                  ),
                ),
              ),
              Visibility(
                visible: egg,
                child: SizedBox(
                  height: 20,
                ),
              ),

              Container(
                width: 240,
                height: 60,
                child: FloatingActionButton(
                  child: BorderedText(
                    child: Text(
                      'TikTok',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url =
                        Uri.parse('https://twitter.com/pastelcolorings');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Color.fromARGB(255, 241, 9, 86),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 240,
                height: 60,
                child: FloatingActionButton(
                  child: BorderedText(
                    child: Text(
                      'Snapchat',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url =
                        Uri.parse('https://twitter.com/pastelcolorings');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Colors.yellow,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 240,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wallpaperaccess.com/full/5180786.jpg"),
                        fit: BoxFit.cover)),
                child: FloatingActionButton(
                  child: BorderedText(
                    strokeColor: Colors.black,
                    strokeWidth: 6,
                    child: Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  splashColor: Colors.white,
                  onPressed: () async {
                    final Uri _url =
                        Uri.parse('https://twitter.com/pastelcolorings');

                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'Could not launch $_url';
                    }
                  },
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
