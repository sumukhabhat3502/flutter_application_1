import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/constants/text_strings.dart';
import 'package:flutter_application_1/src/features/authentication/controller/otp_controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otp;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(mDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(
              mOtpSubTitle.toUpperCase(),
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              mOtpMessage,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                // print("Otp is =>$code");
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
              // keyboardType: ,
            ),
            SizedBox(height: 20.0),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      OTPController.instance.verifyOTP(otp);
                    },
                    child: Text(mNext))),
          ],
        ),
      ),
    );
  }
}
