import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Text('activity page'),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}