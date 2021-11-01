import 'package:docoline/SizeConfig.dart';
import 'package:docoline/screens/DoctorProfile.dart';
import 'package:docoline/screens/SignupScreenDoctor.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'package:docoline/screens/UserProfile.dart';
import 'RegistrationSreenUser.dart';

class DoctorLoginScreen extends StatefulWidget {
  @override
  _DoctorLoginScreenState createState() => _DoctorLoginScreenState();
}

class _DoctorLoginScreenState extends State<DoctorLoginScreen> {
  bool? _passwordVisible = false, _check = false;
  late ThemeData themeData;
  late TextEditingController controllermobile;
  late TextEditingController controllerpassword;
  @override
  void initState() {
    controllermobile = TextEditingController();
    controllerpassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    MySize().init(context);

    return Scaffold(
        body: Stack(
      children: <Widget>[
        ClipPath(
            clipper: _MyCustomClipper(context),
            child: Container(
              alignment: Alignment.center,
              color: themeData.colorScheme.background,
            )),
        Positioned(
          left: 30,
          right: 30,
          top: MediaQuery.of(context).size.height * 0.15,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('./assets/images/DOCOLINE-logo.png'),
                        height: MySize.size180,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24, top: 0),
                        child: Text(
                          "DOCTOR LOGIN",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.headline6,
                              fontWeight: 600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              controller: controllermobile,
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText1,
                                  letterSpacing: 0.1,
                                  color: themeData.colorScheme.primaryVariant,
                                  fontWeight: 500),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    letterSpacing: 0.1,
                                    color: themeData.colorScheme.primaryVariant,
                                    fontWeight: 500),
                                prefixIcon: Icon(MdiIcons.email),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: TextFormField(
                                controller: controllerpassword,
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText1,
                                    letterSpacing: 0.1,
                                    color: themeData.colorScheme.primaryVariant,
                                    fontWeight: 500),
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: AppTheme.getTextStyle(
                                      themeData.textTheme.subtitle2,
                                      letterSpacing: 0.1,
                                      color:
                                          themeData.colorScheme.primaryVariant,
                                      fontWeight: 500),
                                  prefixIcon: Icon(MdiIcons.lockOutline),
                                  suffixIcon: IconButton(
                                    icon: Icon(_passwordVisible!
                                        ? MdiIcons.eyeOutline
                                        : MdiIcons.eyeOffOutline),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible!;
                                      });
                                    },
                                  ),
                                ),
                                obscureText: _passwordVisible!,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(top: MySize.size20!),
                                child: Row(
                                  children: <Widget>[
                                    Checkbox(
                                      activeColor:
                                          themeData.colorScheme.primary,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _check = value;
                                        });
                                      },
                                      value: _check,
                                      visualDensity: VisualDensity.compact,
                                    ),
                                    Text("I agree to the terms and conditions.",
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.bodyText2,
                                            fontWeight: 500)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                boxShadow: [
                                  BoxShadow(
                                    color: themeData.colorScheme.primary
                                        .withAlpha(18),
                                    blurRadius: 3,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all(
                                          Spacing.xy(16, 0))),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DoctorProfileScreen()));
                                  },
                                  child: Text("LOGIN",
                                      style: AppTheme.getTextStyle(
                                          themeData.textTheme.button,
                                          fontWeight: 600,
                                          color:
                                              themeData.colorScheme.onPrimary,
                                          letterSpacing: 0.5))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUpScreenDoctor()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Don't have an Account? ",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText2,
                                fontWeight: 500)),
                        TextSpan(
                            text: " SignUp",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText2,
                                fontWeight: 600,
                                color: themeData.colorScheme.primary)),
                      ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 24,
          left: 12,
          child: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: themeData.colorScheme.primaryVariant,
          ),
        )
      ],
    ));
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
