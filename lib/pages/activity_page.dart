import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/molecules/footer.dart';

// class ActivityPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Actuvity'),
//       ),
//       body: Center(
//         child: Text('activity page'),
//       ),
//       bottomNavigationBar: Footer(),
//     );
//   }
// }

class ActivityPage extends StatefulWidget {
  @override
  ActivityState createState() => ActivityState();
}

class ActivityState extends State<ActivityPage> {
  bool favoriteFlg;

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

  Widget favorite() {
    return FlatButton(
      child: Icon(
        favoriteFlg == true ? Icons.favorite : Icons.favorite_border,
        color: favoriteFlg == true ? Colors.red : Colors.black38,
      ),
      onPressed: () {
        setState(() {
          if (favoriteFlg != true) {
            //ハートが押されたときにfavoriteにtrueを代入している
            favoriteFlg = true;
          } else {
            favoriteFlg = false;
          }
        });
      },
    );
  }
}