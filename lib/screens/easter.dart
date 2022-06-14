import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Easter extends StatefulWidget {
  const Easter({ Key? key }) : super(key: key);

  @override
  State<Easter> createState() => _EasterState();
}

class _EasterState extends State<Easter> {
  bool _like =false;
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
        showCupertinoDialog(
                          
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            
                          
                            title: Text(
                              'GOOD',
                              
                            ),
                            content: Text(
                              'GirlBoss is Very Happy!!',
                              style: TextStyle(
                                fontSize: 15,
                                
                              ),
                              
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: Text(
                                  "Okay",
                                  
                                ),
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              
                            ],
                          ),
                        );
      }
    }
    return Scaffold(
      
      appBar: AppBar(
      centerTitle: true,
        title: Text(
              'Easter Egg',
              style: const TextStyle(
                color: Color.fromARGB(255, 250, 241, 240),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kristen ITC',
              ),
            ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color.fromARGB(255, 234, 0, 255),
              Color.fromARGB(255, 0, 149, 255)
            ])          
         ),        
     ),      
 ),
 body: Container(
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Add circular avatar
            Stack(
              children: [
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15, top: 20),
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
                          color: Color.fromARGB(255, 0, 255, 221),
                          width: 6.0,
                        ),
                      ),
                    ),
                    //Camera Icon
                    
                  ),
                  BorderedText(
                    strokeColor: Color.fromARGB(255, 24, 17, 86),
                    strokeWidth: 5,
                    child: Text(
                      '      MEET\nSWEARSTEL',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 200, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jokerman',
                        letterSpacing: 2.1,
                      ),
                    ),
                  ),
                ],
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
                      onPressed: () async{
                       
                        isLiked(_like);
                        
                        
                      },
                      alignment: Alignment.center,
                      icon: _like == false
                          ? Icon(
                              Icons.thumb_up_off_alt,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )
                          : Icon(
                              Icons.thumb_up_alt_rounded,
                              color: Color.fromARGB(255, 255, 247, 0),
                            )),
                            IconButton(
                      splashRadius: 40,
                      iconSize: 50,
                      onPressed: () async{
                       
                        //Show Cupertino Dialog Box
                        showCupertinoDialog(
                          
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            
                          
                            title: Text(
                              'How dare you MF !!\n',
                              
                            ),
                            content: Text(
                              'Are you going to Like it or Not ?\n',
                              style: TextStyle(
                                fontSize: 15,
                                
                              ),
                              
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: Text(
                                  "I'm gay",
                                  
                                ),
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoDialogAction(
                                isDestructiveAction: true,
                                child: Text(
                                  'Phuck Yes',
                                 
                                    
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                        
                        
                        
                      },
                      alignment: Alignment.center,
                      icon:  Icon(
                              Icons.thumb_down_alt_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                ],
              ),
            ),
            _like==false? Text(
              'Don\'t Dislike it',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kristen ITC',
              ),
            ):Text(
              'Still Don\'t even try to Dislike it',
              style: TextStyle(
                color: Color.fromARGB(255, 250, 241, 240),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                // fontFamily: 'Kristen ITC',
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}