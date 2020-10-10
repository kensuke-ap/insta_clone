import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: SizedBox(
          height: 200,
          child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: List.generate(44, (index) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.network(
                          'https://koenig-media.raywenderlich.com/uploads/2019/08/GoogleMapsFlutter-feature.png'),
                    )
                  ],
                );
              })
          ),
        ),
      ),
    );
  }
}