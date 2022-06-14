import 'package:bordered_text/bordered_text.dart';
import 'package:cord/screens/easter.dart';
import 'package:cord/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _like = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    Future<void> isLiked(bool like) async {
      if (like) {
        setState(() {
          _like = false;
        });
      } else {
        setState(() {
          _like = true;
        });
      }
    }

    void counter(int count) {
      if (count % 5 == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Easter()));
      }
    }

    return Scaffold(
      //A photo and some text and below a paragraph
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                    // height: MediaQuery.of(context).size.height * 0.2,
                    // width: MediaQuery.of(context).size.width,
                    height: 80,
                    width: 350,
                    
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://media.discordapp.net/attachments/976668020049068042/986164064709410816/11.jpg"),
                        fit: BoxFit.fitWidth,
                        
                      ),
                    ),
                  ),
              //Add circular avatar
              Stack(
                children: [
                  //A header picture
                  
      
                  
                  
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 15, top: 1),
                        child: Container(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.orange,
                            backgroundImage: NetworkImage(
                                'https://pbs.twimg.com/media/FUXBfndXsAAO8Yw?format=jpg&name=medium'),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromARGB(255, 47, 0, 255),
                              width: 6.0,
                            ),
                          ),
                        ),
                        //Camera Icon
                      ),
                      BorderedText(
                        strokeColor: Color.fromARGB(255, 255, 4, 0),
                        strokeWidth: 5,
                        child: Text(
                          'MEET PASTEL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jokerman',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 90),
                    child: IconButton(
                      splashColor: Color.fromARGB(131, 255, 235, 59),
                      splashRadius: 30,
                      icon: Icon(
                        Icons.egg,
                        color: Color.fromARGB(255, 250, 242, 1),
                        size: 30,
                      ),
                      //Go to profile page
                      onPressed: () {
                        count++;
                        print(count);
                        counter(count);
                        // Show ios theme snack bar
                        
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Tap '+ (5-count%5).toString() + ' times to unlock  easter egg',
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // backgroundColor: Color.fromARGB(255, 47, 0, 255),
                              duration: Duration(milliseconds: 100),
                            ),
                          );
                        
      
                        
                        
                        
                      },
                    ),
                  ),
                ],
              ),
              //Camera Icon
      
              SizedBox(height: 20),
              //A text box for writing paragraph
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: BorderedText(
                  strokeColor: Color.fromARGB(255, 204, 235, 4),
                  strokeWidth: 2.3,
                  child: Text(
                    'Welcome to Pastel, a social media app for sharing your favourite pastel recipes.\n\n'
                    "• We are a team of three developers, designers and artists who are passionate about creating beautiful and useful apps.\n\n"
                    '• We are currently working on the app, and we are looking forward to sharing our work with you!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 238, 121),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kristen ITC',
                      // letterSpacing: 1.35,
                      shadows: [
                        Shadow(
                          blurRadius: 5.5,
                          color: Color.fromARGB(255, 4, 64, 73),
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
      
              //Icon button for liking
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        splashRadius: 40,
                        iconSize: 50,
                        onPressed: () async {
                          isLiked(_like);
                        },
                        alignment: Alignment.center,
                        icon: _like == false
                            ? Icon(
                                Icons.favorite_outline_rounded,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )
                            : Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ))
                  ],
                ),
              ),
              _like == false
                  ? Text(
                      'Like if you Agree',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kristen ITC',
                      ),
                    )
                  : Text(
                      'Agreed !!',
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 241, 240),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kristen ITC',
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
