import 'package:flutter/material.dart';
import 'package:my_app/widgets/social_widget.dart';



class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
    required this.pathses,
  });

  final Map<String, String> pathses;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
    );
  }
}
