import 'package:docoline/DatabaseFunctions/FirestoreUpdator.dart';
import 'package:docoline/Model/DoctorModel.dart';
import 'package:flutter/material.dart';
import '../../AppTheme.dart';
import '../SizeConfig.dart';
import 'SpecificDoctor.dart';

class DoctorsListScreen extends StatefulWidget {
  @override
  _DoctorsListScreenState createState() => _DoctorsListScreenState();
}

class _DoctorsListScreenState extends State<DoctorsListScreen> {
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
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              body: ListView(
            padding: EdgeInsets.all(24),
            children: <Widget>[
              Container(
                child: Text(
                  "Hey,",
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      color: themeData.colorScheme.primaryVariant,
                      fontWeight: 600,
                      xMuted: true),
                ),
              ),
              Container(
                child: Text(
                  "Shametha",
                  style: AppTheme.getTextStyle(themeData.textTheme.headline3,
                      color: themeData.colorScheme.primaryVariant,
                      fontWeight: 600),
                ),
              ),
              Container(
                height: MySize.size180! * 5,
                child: FutureBuilder(
                    future: FirestoreUpdator().getDoctors(),
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
                              //i=((i+1)/l.length).toInt();
                              i++;
                              return _DoctorDetails(
                                image: l[i],
                                Specialisation:
                                    snapshot.data[index].Specialisation,
                                doctorName: snapshot.data[index].Name,
                                address: snapshot.data[index].Address,
                                dm: snapshot.data[index],
                              );
                            });
                      }
                    }),
              )
            ],
          )),
        ));
  }

  _DoctorDetails({
    required String image,
    required String Specialisation,
    required String address,
    required String doctorName,
    required DoctorModel dm,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SpecificDoctorScreen(dm: dm, image: image)));
      },
      child: Container(
        margin: Spacing.top(24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image.asset(
                  image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 16,
              height: 40,
            ),
            Container(
              width: 220,
              padding: EdgeInsets.all(11),
              color: themeData.colorScheme.background.withOpacity(0.3),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Specialisation,
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText2,
                          color: themeData.colorScheme.primaryVariant,
                          fontWeight: 600,
                          xMuted: true),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      doctorName,
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.subtitle2,
                          color: themeData.colorScheme.primaryVariant,
                          fontWeight: 600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      address,
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText2,
                          color: themeData.colorScheme.primaryVariant,
                          fontWeight: 500),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
