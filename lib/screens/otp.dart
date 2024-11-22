// import 'package:flutter/material.dart';
// import 'package:pin_input_text_field/pin_input_text_field.dart';

// class OTPVerificationPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         // centerTitle: true,
//         title: Text(
//           'OTP Verification',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.black,
//               Colors.grey.shade700,
//             ],
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Icon and Title
//               Column(
//                 children: [
//                   Icon(
//                     Icons.account_balance_wallet_rounded,
//                     size: 50,
//                     color: Colors.orange,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "We have sent a verification code to",
//                     style: TextStyle(color: Colors.grey, fontSize: 16),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     "+91-789374875",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),

//               SizedBox(height: 30),

//               // OTP Fields
//               PinInputTextField(
//                 pinLength: 6,
//                 autoFocus: true,
//                 // decoration: BoxTightDecoration(
//                 //   radius: Radius.circular(20),

//                 //   // strokeColorBuilder:
//                 //   // PinListenColorBuilder(Colors.white, Colors.grey),
//                 //   bgColorBuilder:
//                 //       PinListenColorBuilder(Colors.white, Colors.grey[300]!),
//                 // ),

//                 textInputAction: TextInputAction.done,
//                 onChanged: (value) {
//                   print("OTP Entered: $value");
//                 },
//                 onSubmit: (pin) {
//                   print("Submitted OTP: $pin");
//                 },
//               ),

//               SizedBox(height: 30),

//               // Resend and Navigation Options
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   RichText(
//                     text: TextSpan(
//                       text: "Didn't get the OTP? ",
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                       children: [
//                         TextSpan(
//                           text: "Resend SMS",
//                           style: TextStyle(
//                               color: Colors.red, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   GestureDetector(
//                     onTap: () {
//                       print("Try more options");
//                     },
//                     child: Text(
//                       "Try more options",
//                       style: TextStyle(color: Colors.red, fontSize: 14),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   GestureDetector(
//                     onTap: () {
//                       print("Go back to login methods");
//                     },
//                     child: Text(
//                       "Go back to login methods",
//                       style: TextStyle(color: Colors.red, fontSize: 14),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:reelproject/screens/bottomnavigation.dart';

class OTPVerificationPage extends StatefulWidget {
  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(80),
        border: Border.all(color: Colors.grey),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Back button color
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // centerTitle: true,
        title: Text(
          'OTP Verification',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.grey.shade700,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon and Title
            Text(
              "We have sent a verification code to",
              style: TextStyle(color: Colors.grey, fontSize: 21),
            ),
            SizedBox(height: 5),
            Text(
              "+91-XXXXXXXXXX",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // OTP Fields
            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(80),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              onChanged: (value) {
                print("OTP Entered: $value");
              },
              onCompleted: (pin) {
                print("Completed OTP: $pin");
              },
            ),

            SizedBox(height: 30),

            // Resend and Navigation Options
            RichText(
              text: TextSpan(
                text: "Didn't get the OTP? ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                children: [
                  TextSpan(
                    text: "Resend SMS",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                print("Try more options");
              },
              child: Text(
                "Try more options",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => bottomnavbar())));
                print("Go back to login methods");
              },
              child: Text(
                "Go back to login methods",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
