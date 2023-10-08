import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constants.dart';
import '../../../core/utils/app_router.dart';
import '../../../core/utils/assets.dart';
import '../../../core/utils/styles.dart';
import '../../../core/utils/widgets/custom_button.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12), // Add padding here
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AssetsData.arrow,
                      width: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AssetsData.rectangle,
                      width: 60,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.genderScreen);
                    },
                    child: Text(
                      'Back',
                      style: Styles.quickSand16.copyWith(color: buttonColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'STEP 3/5',
                      style: Styles.quickSand16.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: buttonColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'What’s Your \nEmail Address',
                      style: Styles.quickSand25,
                      textAlign: TextAlign.center,
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Email We Can Use To Reach You',
                      style: Styles.quickSand16.copyWith(fontSize: 15, color: Color(0xff9F9F9F)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 300,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE5E4E2),
                            blurRadius: 6,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "\u00A0Email",
                          hintStyle: Styles.quickSand18.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    buttonText: 'Verify',
                    onPressed: () {
                    },
                    backgroundColor: buttonColor,
                    textColor: Colors.white,
                    textStyle: Styles.rubik16.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
