import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _passwordVisible = false;
  late ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  MdiIcons.chevronLeft,
                  color: themeData.colorScheme.primary,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MySize.size24!),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: MySize.size16!),
                        width: MySize.getScaledSizeHeight(140),
                        height: MySize.getScaledSizeHeight(140),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "./assets/images/Shametha-Photo.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        bottom: MySize.size12,
                        right: MySize.size8,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: themeData.scaffoldBackgroundColor,
                                width: 2,
                                style: BorderStyle.solid),
                            color: themeData.colorScheme.primary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(MySize.size6!),
                            child: Icon(
                              MdiIcons.pencil,
                              size: MySize.size20,
                              color: themeData.colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Shametha K G",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.headline6,
                          fontWeight: 600,
                          letterSpacing: 0)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MySize.size36!,
                  left: MySize.size24!,
                  right: MySize.size24!),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.headline6,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 400),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.headline6,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.accountOutline,
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      controller: TextEditingController(text: "Shametha K G"),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.headline6,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 400),
                      decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.headline6,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.phoneOutline,
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.sentences,
                      controller: TextEditingController(text: "+91 9876543210"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.headline6,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 400),
                      decoration: InputDecoration(
                        hintText: "Change Password",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.headline6,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.lockOutline,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? MdiIcons.eyeOutline
                                : MdiIcons.eyeOffOutline,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: _passwordVisible,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size24!),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(MySize.size8!)),
                      boxShadow: [
                        BoxShadow(
                          color: themeData.colorScheme.primary.withAlpha(20),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(Spacing.xy(16, 0))),
                        onPressed: () {},
                        child: Text("UPDATE",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.button,
                                fontWeight: 600,
                                color: themeData.colorScheme.onPrimary,
                                letterSpacing: 0.3))),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
