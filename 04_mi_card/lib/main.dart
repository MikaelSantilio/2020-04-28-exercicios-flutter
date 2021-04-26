import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profile.png'),
            ),
            RichText(
              text: TextSpan(
                text: 'mikael',
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w300),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'santilio',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
              'Web Developer',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
            ),),
            Container(
                height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildContainerWithIcon(
                      FontAwesomeIcons.github, 30, Colors.white, 'http://github.com/MikaelSantilio/'),
                  buildContainerWithIcon(
                      FontAwesomeIcons.linkedin, 30, Colors.white, 'https://www.linkedin.com/in/mikaelsantilio/'),
                  buildContainerWithIcon(
                      FontAwesomeIcons.whatsapp, 30, Colors.white, 'https://wa.me/5586999454360'),
                  buildContainerWithIcon(
                      FontAwesomeIcons.envelope, 30, Colors.white, 'mailto:mikael.santilio@gmail.com'),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

Container buildContainerWithIcon(IconData icon, double sizeIcon, Color color, String link) {
  return Container(
    width: 80,
    height: 80,
    child: ElevatedButton(
                onPressed: () => launch(link),
                child: Center(child: FaIcon(icon, size: sizeIcon, color: color)),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black)
                    )
                  ),
                  backgroundColor:  MaterialStateProperty.all(Colors.black),
                )
              ),
  );
}
