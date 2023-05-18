import 'package:flutter/material.dart';
import 'package:my_app/start.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaAvatar extends StatelessWidget {
  String path;
  String path_links;
  SocialMediaAvatar({
    super.key,
    required this.path,
    required this.path_links,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child:
          // ignore: unnecessary_string_interpolations
          InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/${path}.png',
          ),
          radius: 40,
          backgroundColor: Colors.white,
        ),
        onTap: () {
          // launchUrl(Uri.parse(path_links),mode: LaunchMode.externalApplication);
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(path_links), mode: LaunchMode.externalApplication);
                  },
                  child: Text(
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                    'Go To $path',
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                  ),
                );
              });
        },
      ),
    );
  }
}
