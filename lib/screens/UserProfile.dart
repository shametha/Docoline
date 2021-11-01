import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docoline/DatabaseFunctions/FirestoreUpdator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'DoctorsList.dart';
import 'EditProfile.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  late ThemeData themeData;
  List<String> l = [
    './assets/images/doctor2.jpg',
    './assets/images/doctor1.jpg',
    './assets/images/doctor3.png',
    './assets/images/doctor9.jpg',
    './assets/images/doctor1.jpg',
    './assets/images/doctor2.jpg',
    './assets/images/doctor3.png',
    './assets/images/doctor9.jpg',
    './assets/images/doctor1.jpg',
    './assets/images/doctor2.jpg',
    './assets/images/doctor3.png',
    './assets/images/doctor9.jpg'
  ];
  int i = -1;
  int selectedDate = 1;

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    MySize().init(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          color: themeData.primaryColor,
          child: ListView(
            padding: Spacing.top(68),
            children: [
              Container(
                padding: Spacing.vertical(24),
                margin: Spacing.fromLTRB(24, 16, 24, 0),
                decoration: BoxDecoration(
                  color: themeData.backgroundColor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(MySize.size8!)),
                  border:
                      Border.all(color: themeData.backgroundColor, width: 1.5),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.all(Radius.circular(MySize.size120!)),
                      child: Image(
                        image: AssetImage('assets/images/Shametha-Photo.jpg'),
                        height: MySize.size120,
                        width: MySize.size120,
                      ),
                    ),
                    Container(
                      margin: Spacing.top(16),
                      child: Text(
                        "Shametha K G",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.headline5,
                            fontWeight: 600,
                            letterSpacing: 0),
                      ),
                    ),
                    Container(
                      margin: Spacing.top(24),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Weight",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      color: Colors.black,
                                      muted: true),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "52",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.headline6,
                                              color: Colors.black,
                                              fontWeight: 600)),
                                      TextSpan(
                                          text: " kg",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.headline6,
                                              color: Colors.black,
                                              fontWeight: 500)),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Height",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      color: Colors.black,
                                      muted: true),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "158",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.headline6,
                                              color: Colors.black,
                                              fontWeight: 600)),
                                      TextSpan(
                                          text: " cm",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.headline6,
                                              color: Colors.black,
                                              fontWeight: 500)),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Age",
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText1,
                                      color: Colors.black,
                                      muted: true),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "20",
                                          style: AppTheme.getTextStyle(
                                              themeData.textTheme.headline6,
                                              color: Colors.black,
                                              fontWeight: 600)),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: Spacing.fromLTRB(20, 10, 24, 0),
                child: ElevatedButton(
                  child: Text(
                    "Edit Profile",
                    style: themeData.textTheme.bodyText1,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileScreen()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
              ),
              Container(
                margin: Spacing.fromLTRB(20, 10, 24, 0),
                child: ElevatedButton(
                  child: Text(
                    "Book New Appointement",
                    style: themeData.textTheme.bodyText1,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorsListScreen()));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
              ),
              Container(
                margin: Spacing.fromLTRB(24, 36, 24, 0),
                child: Text(
                  "Appointment".toUpperCase(),
                  style: AppTheme.getTextStyle(
                    themeData.textTheme.caption,
                    fontSize: 11.8,
                    fontWeight: 600,
                    xMuted: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: MySize.size180!,
                child: FutureBuilder(
                    future: FirestoreUpdator()
                        .getUserRequest("mrRzc1uWGukBu5fxkawl"),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        print(snapshot.data);
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              i++;
                              return appointmentWidget(
                                  image: l[i],
                                  docName: snapshot.data[index].dm.Name,
                                  type: snapshot.data[index].dm.Specialisation,
                                  time: TimeOfDay.now().toString().substring(9),
                                  clockColor: themeData.backgroundColor);
                            });
                      }
                    }),
              ),
            ],
          ),
        )));
  }

  Widget appointmentWidget(
      {required String image,
      required String docName,
      required String type,
      required String time,
      Color? clockColor}) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: Spacing.fromLTRB(4, 4, 8, 4),
      decoration: BoxDecoration(
          color: themeData.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(MySize.size12!)),
          boxShadow: [
            BoxShadow(
                color: themeData.primaryColor,
                blurRadius: MySize.size6!,
                offset: Offset(0, MySize.size4!))
          ]),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(MySize.size12!)),
            child: Image(
              image: AssetImage(image),
              width: MySize.size72,
              height: MySize.size72,
            ),
          ),
          Expanded(
            child: Container(
              height: MySize.size72,
              margin: Spacing.left(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    docName,
                    style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                        color: Colors.black, fontWeight: 600),
                  ),
                  Text(
                    type,
                    style: AppTheme.getTextStyle(themeData.textTheme.caption,
                        color: Colors.black26, fontWeight: 500, xMuted: true),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          MdiIcons.clock,
                          size: MySize.size16,
                          color: clockColor,
                        ),
                        Container(
                          margin: Spacing.left(4),
                          child: Text(
                            time,
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.caption,
                                muted: true,
                                fontWeight: 600,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
