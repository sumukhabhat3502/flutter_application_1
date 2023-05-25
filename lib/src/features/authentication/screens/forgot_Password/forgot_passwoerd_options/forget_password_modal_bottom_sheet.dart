import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/authentication/screens/forgot_Password/forgot_passwoerd_email/forget_password_mail.dart';

import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forgot_password_email_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(mDefaultSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            mForgetPasswordTitle,
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            mForgetPasswordSubTitle,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: 30,
          ),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mail_outline_rounded,
            title: mEmail,
            subTitle: mResetViaEMail,
            onTap: () {
              Navigator.pop(context);
              Get.to(() => ForgetPasswordMailScreen());
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mobile_friendly_rounded,
            title: mPhoneNumber,
            subTitle: mResetViaPhone,
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
