import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/constants/text_strings.dart';
import 'package:flutter_application_1/src/features/core/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../authentication/models/user_model.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          mEditProfile,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(mDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(image: AssetImage('assetName'))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.withOpacity(0.1),
                              ),
                              child: Icon(
                                LineAwesomeIcons.camera,
                                size: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: userData.fullName,
                              decoration: InputDecoration(
                                  label: Text(mFullName),
                                  prefixIcon: Icon(LineAwesomeIcons.user)),
                            ),
                            SizedBox(
                              height: mFormHeight - 20,
                            ),
                            TextFormField(
                              initialValue: userData.email,
                              decoration: InputDecoration(
                                  label: Text(mEmail),
                                  prefixIcon: Icon(LineAwesomeIcons.envelope)),
                            ),
                            SizedBox(
                              height: mFormHeight - 20,
                            ),
                            TextFormField(
                              initialValue: userData.phoneNo,
                              decoration: InputDecoration(
                                  label: Text(mPhoneNumber),
                                  prefixIcon: Icon(LineAwesomeIcons.phone)),
                            ),
                            SizedBox(
                              height: mFormHeight - 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  label: Text(mPassword),
                                  prefixIcon:
                                      Icon(LineAwesomeIcons.fingerprint)),
                            ),
                            SizedBox(
                              height: mFormHeight,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () =>
                                    Get.to(() => UpdateProfileScreen()),
                                child: Text(
                                  mEditProfile,
                                  style: TextStyle(color: mDarkColor),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: mPrimaryColor,
                                    side: BorderSide.none,
                                    shape: StadiumBorder()),
                              ),
                            ),
                            SizedBox(
                              height: mFormHeight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(TextSpan(
                                    text: mJoined,
                                    style: TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(
                                          text: mJoinedAt,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12))
                                    ])),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.redAccent.withOpacity(0.1),
                                        elevation: 0,
                                        foregroundColor: Colors.red,
                                        shape: StadiumBorder(),
                                        side: BorderSide.none),
                                    child: Text(mDelete)),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return Center(
                    child: Text("Something went Wrong"),
                  );
                }
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
