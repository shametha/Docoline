import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'EditProfile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SafeArea(
              child: Scaffold(
                  body: ListView(
                padding: EdgeInsets.all(MySize.size24!),
                children: <Widget>[
                  Container(
                    margin: Spacing.top(24),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.size6!)),
                              color: themeData.colorScheme.primary),
                          padding: Spacing.all(10),
                          child: Icon(
                            MdiIcons.tuneVariant,
                            size: MySize.size20,
                            color: themeData.colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(
                          width: MySize.size16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Account",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText2,
                                  color: themeData.colorScheme.primary,
                                  fontWeight: 700),
                            ),
                            Text(
                              "Edit and manage your account details",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.caption,
                                  color: themeData.colorScheme.primary,
                                  letterSpacing: 0,
                                  muted: true,
                                  fontWeight: 600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: Spacing.top(16),
                    padding: Spacing.vertical(8),
                    decoration: BoxDecoration(
                      color: themeData.backgroundColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(MySize.size8!)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfileScreen()));
                          },
                          leading: ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.size8!)),
                              child: Image(
                                image:
                                    AssetImage('./assets/images/Shametha-Photo.jpg'),
                                height: MySize.size44,
                                width: MySize.size44,
                              )),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Maria M. Boyles",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    color: themeData.colorScheme.primary,
                                    fontWeight: 700),
                              ),
                              Text(
                                "Editor",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText2,
                                    color: themeData.colorScheme.primary,
                                    letterSpacing: 0,
                                    muted: true,
                                    fontWeight: 600),
                              )
                            ],
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                        SizedBox(
                          height: MySize.size8,
                        ),
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText2,
                                    color: themeData.colorScheme.primary,
                                    letterSpacing: 0,
                                    xMuted: true,
                                    fontWeight: 600),
                              ),
                              Text(
                                "maria@coderthemes.com",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    color: themeData.colorScheme.primary,
                                    fontWeight: 600),
                              )
                            ],
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText2,
                                    color: themeData.colorScheme.primary,
                                    letterSpacing: 0,
                                    xMuted: true,
                                    fontWeight: 600),
                              ),
                              Text(
                                "+91 98765 43210",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    color: themeData.colorScheme.primary,
                                    fontWeight: 600),
                              )
                            ],
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: Spacing.top(24),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.size6!)),
                              color: themeData.colorScheme.primary),
                          padding: Spacing.all(10),
                          child: Icon(
                            MdiIcons.emailOpenOutline,
                            size: MySize.size20,
                            color: themeData.colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(
                          width: MySize.size16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Help and Feedback",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText2,
                                  color: themeData.colorScheme.primary,
                                  fontWeight: 700),
                            ),
                            Text(
                              "Reach us with your feedback and questions",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.caption,
                                  color: themeData.colorScheme.primary,
                                  letterSpacing: 0,
                                  muted: true,
                                  fontWeight: 600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: Spacing.top(16),
                    padding: Spacing.vertical(8),
                    decoration: BoxDecoration(
                      color: themeData.backgroundColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(MySize.size8!)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            MdiIcons.frequentlyAskedQuestions,
                            color: themeData.colorScheme.primary,
                          ),
                          title: Text(
                            "FAQs",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText1,
                                color: themeData.colorScheme.primary,
                                fontWeight: 600),
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                        Divider(height: 0,),
                        ListTile(
                          leading: Icon(
                            MdiIcons.youtube,
                            color: themeData.colorScheme.primary,
                          ),
                          title: Text(
                            "Videos",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText1,
                                color: themeData.colorScheme.primary,
                                fontWeight: 600),
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                        Divider(height: 0,),
                        ListTile(
                          leading: Icon(
                            MdiIcons.emailOutline,
                            color: themeData.colorScheme.primary,
                          ),
                          title: Text(
                            "Contact us",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText1,
                                color: themeData.colorScheme.primary,
                                fontWeight: 600),
                          ),
                          trailing: Icon(
                            MdiIcons.chevronRight,
                            color: themeData.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ));
  }
}