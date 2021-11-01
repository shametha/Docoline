import 'package:docoline/DatabaseFunctions/FirestoreUpdator.dart';
import 'package:docoline/Model/DoctorRequest.dart';
import 'package:docoline/Model/UserRequest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'EditProfile.dart';

class DoctorProfileScreen extends StatefulWidget {
  @override
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  late ThemeData themeData;
  List<DoctorRequest> l = [];
  List<String> lis = [
    './assets/images/User2.jfif',
    './assets/images/User1.png',
    './assets/images/User3.jpg',
    './assets/images/User4.jpg',
    './assets/images/User2.jfif',
    './assets/images/User1.png',
    './assets/images/User3.jpg',
    './assets/images/User4.jpg',
    './assets/images/User2.jfif',
    './assets/images/User1.png',
    './assets/images/User3.jpg',
    './assets/images/User4.jpg',
    './assets/images/User2.jfif',
    './assets/images/User1.png',
    './assets/images/User3.jpg',
    './assets/images/User4.jpg',
  ];
  int i = -1;
  int selectedDate = 1;
  void initState() {
    FirestoreUpdator().getDoctorRequest("L70GLqJc5cBQ8WoxttvM");
    updateUI();
    super.initState();
  }

  Future updateUI() async {
    var s = await FirestoreUpdator().getDoctorRequest("L70GLqJc5cBQ8WoxttvM");
    setState(() {
      l = s;
    });
  }

  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    MySize().init(context);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          color: themeData.bottomAppBarColor,
          child: ListView(
            padding: Spacing.top(68),
            children: [
              Container(
                padding: EdgeInsets.all(24),
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
                        "Dr. Shifu",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.headline5,
                            fontWeight: 600,
                            letterSpacing: 0),
                      ),
                    ),
                    Container(
                      margin: Spacing.top(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Specialisation :",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    fontWeight: 600,
                                    letterSpacing: 2),
                              ),
                              Text(
                                "Child Specialist MBBS",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    fontWeight: 300,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MySize.size10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Adress :",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    fontWeight: 600,
                                    letterSpacing: 2),
                              ),
                              Text(
                                "9-S School Street, Hyderabad",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.subtitle2,
                                    fontWeight: 300,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.lightBlue,
                      elevation: 10),
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
                  height: MySize.size180! *2,
                  child: ListView.builder(
                      itemCount: l.length,
                      itemBuilder: (context, index) {
                        i++;
                        return appointmentWidget(
                          PatientName: l[index].um.Name,
                          Acceptance: l[index].acceptance,
                          ReqId: l[index].ReqId,
                          image: lis[i],
                        );
                      })),
            ],
          ),
        )));
  }

  Widget appointmentWidget({
    required String PatientName,
    required bool Acceptance,
    required String ReqId,
    required String image,
  }) {
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
          Container(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(MySize.size12!)),
              child: Image(
                image: AssetImage(image),
                width: MySize.size80,
                height: MySize.size80,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  PatientName,
                  style: AppTheme.getTextStyle(themeData.textTheme.headline6,
                      color: Colors.black, fontWeight: 600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      iconSize: MySize.size50!,
                      icon: Icon(Acceptance == true
                          ? MdiIcons.ticketConfirmation
                          : MdiIcons.clock),
                      onPressed: () async {
                        print(Acceptance);
                        await FirestoreUpdator()
                            .acceptRequest(ReqId: ReqId, accept: Acceptance);
                        print(ReqId);
                        updateUI();
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
