import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actuvity'),
      ),
      body: Center(
        child: Text('activity page'),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}