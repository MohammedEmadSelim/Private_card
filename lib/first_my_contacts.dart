import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/social_widget.dart';

class FristPage extends StatelessWidget {
  FristPage({super.key});
  Map<String, String> pathses = {
    'whatsapp.png': 'https://wa.me/+201000927095',
    'facebook.png': 'https://web.facebook.com/profile.php?id=100029550412774',
    'youtube.png': 'https://www.youtube.com/@GammalTech',
    'social.png': 'https://github.com/MohammedEmadSelim',
    'instagram.png': 'https://www.instagram.com/mohammedemad586/',
    'linkedin.png': 'https://www.linkedin.com/in/mohammed-selim-523239215/',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 128, 128),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Private Card",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/mohamdAbdo.jpeg'),
                radius: 100,
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Text(
                'Mohammed Emad',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Software Engineer and CEO For EL_Ekhlas Company ",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '01000927095',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  //SizedBox()
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201000927095'));
                    },
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                itemCount: pathses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (
                  context,
                  index,
                ) {
                  return SocialMediaAvatar(
                    path: pathses.keys.toList()[index],
                    path_links: pathses.values.toList()[index],
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
              )

              /*
                        two row in column to draw #           --|
                                                  #             |
                                                  #             |    <== column
                                row1            # # #           |
                                row2            # # #         --|
                         */
              /* <======= block of coode
                      /======================
                      vvvvvvvvvvvvvvvvvvvvvvv
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SocialMediaAvatar( path: 'whatsapp.png',),
                            SocialMediaAvatar( path: 'facebook.png',),
                            SocialMediaAvatar( path: 'youtube.png',),
                            
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SocialMediaAvatar( path: 'social.png',),
                            SocialMediaAvatar( path: 'linkedin.png',),
                            SocialMediaAvatar( path: 'instagram.png',),
                          
                          ],
                        )
                        */
            ],
          ),
        ),
      ),
    );
  }
}
