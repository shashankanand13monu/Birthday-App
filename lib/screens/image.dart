import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final int url;
  final List<Image >imag;
  const ImageDisplay({Key? key, required this.url,required this.imag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Full-Screen view ',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              WidgetSpan(
                  child: const Icon(
                Icons.image,
                size: 18,
                color: Colors.blue,
              )),
            ],
          ),
        ),
        centerTitle: false,
      ),
      //Display a image
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 500,
              // width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: NetworkImage(url),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: imag[url],
            ),
            //Add circular avatar
          ],
        ),
      ),
    );
  }
}
