import 'package:docoline/DatabaseFunctions/UserRequestScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../SizeConfig.dart';

class TokenConfirmation extends StatelessWidget {
  const TokenConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('./assets/images/DOCOLINE-logo.png'),
                    height: MySize.size180,
                  ),
                  SpinKitRotatingCircle(
                    color: Colors.blue,
                    size: 40.0,
                  ),
                  SizedBox(height: 20),
                  Text("Loading Please wait....."),
                ],
              ),
            );
          } else {
            return UserRequestScreen();
          }
        });
  }
}
