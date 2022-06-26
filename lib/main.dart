import 'package:flutter/material.dart';
import 'package:profile_wheel/WheelItemConfig.dart';
import 'package:profile_wheel/profile_wheel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: ProfileWheel(
              backgroundColor: Colors.white,
              dividerColor: Colors.grey,
              width: 500,

              imageProvider: NetworkImage("https://cdn4.iconfinder.com/data/icons/avatars-circle-2/72/146-512.png"),
              imageSize: 150,
              itemConfig: WheelItemConfig(
                icon1: Icons.supervised_user_circle,
                title1: "User",
                onTapCallback1: (){},
                shadowOffset1: Offset(-2,-2),

                icon2: Icons.badge,
                title2: "Notifications",
                onTapCallback2: (){},
                shadowOffset2: Offset(-2,-2),

                icon3: Icons.bookmark,
                title3: "Bookmark",
                onTapCallback3: (){},
                shadowOffset3: Offset(-2,-2),

                icon4: Icons.add,
                title4: "Add",
                onTapCallback4: (){},
                shadowOffset4: Offset(-2,-2),
              ),
            ),
          ),
        )
    );
  }
}

