import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Start extends StatelessWidget {
  Uri url;
  Start({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        ),
      );
  }
}
