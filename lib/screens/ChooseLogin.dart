import 'package:docoline/screens/UserLoginScreen.dart';
import 'package:flutter/material.dart';
import '../SizeConfig.dart';
import 'DoctorLoginScreen.dart';

class ChooseLogin extends StatelessWidget {
  const ChooseLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ThemeData themeData;
    themeData = Theme.of(context);
    MySize().init(context);
    return Scaffold(
        body: Stack(children: <Widget>[
      ClipPath(
          clipper: _MyCustomClipper(context),
          child: Container(
            alignment: Alignment.center,
            color: themeData.colorScheme.background,
          )),
      Column(children: <Widget>[
        SizedBox(
          height: MySize.size180,
        ),
        SizedBox(
          height: MySize.size100,
        ),
        Card(
          elevation: 0,
          color: themeData.backgroundColor.withAlpha(0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('./assets/images/DOCOLINE-logo.png'),
                      height: MySize.size180,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        boxShadow: [
                          BoxShadow(
                            color: themeData.colorScheme.primary.withAlpha(18),
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserLoginScreen()));
                          },
                          child: Text(
                            "USER LOGIN",
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        boxShadow: [
                          BoxShadow(
                            color: themeData.colorScheme.primary.withAlpha(18),
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(Spacing.xy(16, 0))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorLoginScreen()));
                          },
                          child: Text(
                            "DOCTOR LOGIN",
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ])
    ]));
  }
}

class _MyCustomClipper extends CustomClipper<Path> {
  final BuildContext _context;

  _MyCustomClipper(this._context);

  @override
  Path getClip(Size size) {
    final path = Path();
    Size size = MediaQuery.of(_context).size;
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(0, size.height * 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
