import 'package:docoline/DatabaseFunctions/FirestoreUpdator.dart';
import 'package:docoline/Model/DoctorModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'TokenConfirmation.dart';

class SpecificDoctorScreen extends StatefulWidget {
  const SpecificDoctorScreen({required this.dm, required this.image});
  final DoctorModel dm;
  final String image;

  @override
  _SpecificDoctorScreenState createState() => _SpecificDoctorScreenState();
}

class _SpecificDoctorScreenState extends State<SpecificDoctorScreen> {
  late ThemeData themeData;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          color: themeData.backgroundColor,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                      width: MySize.safeWidth,
                      height: MySize.getScaledSizeHeight(240),
                    ),
                    Positioned(
                      child: Container(
                        margin: Spacing.fromLTRB(24, 28, 24, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: Spacing.all(8),
                            decoration: BoxDecoration(
                              color: themeData.backgroundColor,
                              border: Border.all(
                                  color: themeData.primaryColor, width: 1),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.size8!)),
                            ),
                            child: Icon(MdiIcons.chevronLeft,
                                color: themeData.colorScheme.onBackground
                                    .withAlpha(220),
                                size: MySize.size20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: Spacing.vertical(16),
                  children: [
                    SizedBox(
                      height: MySize.size20,
                    ),
                    Container(
                      margin: Spacing.fromLTRB(24, 0, 24, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.dm.Name,
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.headline5,
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: 600),
                            ),
                          ),
                          Container(
                            margin: Spacing.left(16),
                            padding: Spacing.all(8),
                            decoration: BoxDecoration(
                                color: themeData.colorScheme.onPrimary,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(MySize.size8!))),
                            child: Icon(MdiIcons.heartOutline,
                                size: MySize.size18,
                                color: themeData.colorScheme.primary),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: Spacing.fromLTRB(24, 16, 24, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: Spacing.all(8),
                                decoration: BoxDecoration(
                                    color: themeData.colorScheme.onPrimary,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(MySize.size20!))),
                                child: Icon(
                                  MdiIcons.calendar,
                                  size: MySize.size28,
                                  color: themeData.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: Spacing.left(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Thursday, May 29, 2020",
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.caption,
                                            fontWeight: 600,
                                            color: themeData
                                                .colorScheme.onBackground),
                                      ),
                                      Container(
                                        margin: Spacing.top(2),
                                        child: Text(
                                          "8:30 AM - 11:30 AM",
                                          style: AppTheme.getTextStyle(
                                            themeData.textTheme.caption,
                                            fontSize: 20,
                                            fontWeight: 500,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: Spacing.top(16),
                            child: Row(
                              children: [
                                Container(
                                  padding: Spacing.all(8),
                                  decoration: BoxDecoration(
                                      color: themeData.colorScheme.onPrimary,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MySize.size20!))),
                                  child: Icon(
                                    MdiIcons.mapMarkerOutline,
                                    size: MySize.size28,
                                    color: themeData.colorScheme.primary,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: Spacing.left(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.caption,
                                              fontSize: 14,
                                              fontWeight: 600,
                                              color: themeData
                                                  .colorScheme.onBackground),
                                        ),
                                        Container(
                                          margin: Spacing.top(2),
                                          child: Text(
                                            widget.dm.Address,
                                            style: AppTheme.getTextStyle(
                                              themeData.textTheme.caption,
                                              fontSize: 20,
                                              fontWeight: 500,
                                              color:
                                                  themeData.colorScheme.primary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: Spacing.fromLTRB(24, 24, 24, 0),
                      child: Text(
                        "About The Doctor",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle1,
                            fontWeight: 700,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: Spacing.fromLTRB(24, 12, 24, 0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: widget.dm.Name,
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.subtitle2,
                                  color: Colors.black,
                                  muted: true,
                                  fontWeight: 500)),
                          TextSpan(
                              text: " Read More",
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.caption,
                                  color: themeData.colorScheme.primary,
                                  fontWeight: 600))
                        ]),
                      ),
                    ),
                    Container(
                      margin: Spacing.fromLTRB(24, 16, 24, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          FirestoreUpdator().addUserRequest(
                              UserId: "mrRzc1uWGukBu5fxkawl",
                              DoctorId: widget.dm.DoctorId);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TokenConfirmation()));
                        },
                        child: Text(
                          "Book Token",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.bodyText2,
                              fontWeight: 600,
                              color: themeData.colorScheme.onPrimary),
                        ),
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(Spacing.xy(16, 0))),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
