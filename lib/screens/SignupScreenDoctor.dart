import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';

class SignUpScreenDoctor extends StatefulWidget {
  @override
  _SignUpScreenDoctorState createState() => _SignUpScreenDoctorState();
}

class _SignUpScreenDoctorState extends State<SignUpScreenDoctor> {
  bool _passwordVisible = false;
  late ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    MySize().init(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(
          children: <Widget>[
            ClipPath(
                clipper: _MyCustomClipper(context),
                child: Container(
                  alignment: Alignment.center,
                  color: themeData.colorScheme.background,
                )),
            Positioned(
              left: MySize.size30,
              right: MySize.size30,
              top: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MySize.size16!, bottom: MySize.size16!),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: MySize.size8!),
                            child: Text(
                              "REGISTER",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.headline6,
                                  fontWeight: 600),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: MySize.size16!,
                                right: MySize.size16!,
                                top: MySize.size8!),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: MySize.size16!),
                                  child: TextFormField(
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData.colorScheme.primary,
                                        fontWeight: 500),
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      hintStyle: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData.colorScheme.primary,
                                          fontWeight: 500),
                                      prefixIcon: Icon(MdiIcons.accountOutline),
                                    ),
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: MySize.size16!),
                                  child: TextFormField(
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData.colorScheme.primary,
                                        fontWeight: 500),
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData.colorScheme.primary,
                                          fontWeight: 500),
                                      prefixIcon: Icon(MdiIcons.phoneOutline),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: MySize.size16!),
                                  child: TextFormField(
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData.colorScheme.primary,
                                        fontWeight: 500),
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData.colorScheme.primary,
                                          fontWeight: 500),
                                      prefixIcon: Icon(MdiIcons.lockOutline),
                                      suffixIcon: IconButton(
                                        icon: Icon(_passwordVisible
                                            ? MdiIcons.eyeOutline
                                            : MdiIcons.eyeOffOutline),
                                        onPressed: () {
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                    obscureText: _passwordVisible,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: MySize.size16!),
                                  child: TextFormField(
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData.colorScheme.primary,
                                        fontWeight: 500),
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      hintStyle: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData.colorScheme.primary,
                                          fontWeight: 500),
                                      prefixIcon:
                                          Icon(MdiIcons.hospitalBuilding),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: MySize.size16!),
                                  child: TextFormField(
                                    style: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData.colorScheme.primary,
                                        fontWeight: 500),
                                    decoration: InputDecoration(
                                      hintText: "Specialisation",
                                      hintStyle: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData.colorScheme.primary,
                                          fontWeight: 500),
                                      prefixIcon: Icon(MdiIcons.doctor),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.only(top: MySize.size24!),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MySize.size24!)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: themeData.colorScheme.primary
                                              .withAlpha(28),
                                          blurRadius: 3,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                Spacing.xy(16, 0))),
                                        onPressed: () {},
                                        child: Text("REGISTER",
                                            style: AppTheme.getTextStyle(
                                                themeData.textTheme.button,
                                                fontWeight: 600,
                                                color: themeData
                                                    .colorScheme.onPrimary)))),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MySize.size16!, bottom: MySize.size8!),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "I've already an Account? ",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText2,
                                  fontWeight: 500)),
                          TextSpan(
                              text: " Login",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText2,
                                  fontWeight: 600,
                                  color: themeData.colorScheme.primary)),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: MySize.size24!,
              left: MySize.size12!,
              child: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        )));
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
