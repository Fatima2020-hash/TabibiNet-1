import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:tabibinet_project/constant.dart';
import 'package:tabibinet_project/model/res/constant/app_fonts.dart';
import 'package:tabibinet_project/model/res/constant/app_icons.dart';
import 'package:tabibinet_project/model/res/widgets/dotted_line.dart';
import 'package:tabibinet_project/model/res/widgets/header.dart';
import 'package:tabibinet_project/model/res/widgets/info_tile.dart';
import 'package:tabibinet_project/model/res/widgets/submit_button.dart';
import 'package:tabibinet_project/model/res/widgets/text_widget.dart';

class PatientManagementDetailScreen extends StatelessWidget {
  const PatientManagementDetailScreen({
    super.key,
    required this.patientName,
    required this.patientAge,
    required this.patientGender,
  });

  final String patientName;
  final String patientAge;
  final String patientGender;

  @override
  Widget build(BuildContext context) {
    double height1 = 20.0;
    double height2 = 10.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            const Header(text: "Patient Details"),
            Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    TextWidget(
                      text: "Personal Details", fontSize: 18.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height1,),
                    TextWidget(
                      text: "Full Name", fontSize: 14.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height2,),
                    InfoTile(title: patientName),
                    SizedBox(height: height1,),
                    TextWidget(
                      text: "Age", fontSize: 14.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height2,),
                    InfoTile(title: patientAge),
                    SizedBox(height: height1,),
                    TextWidget(
                      text: "Gender", fontSize: 14.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height2,),
                    InfoTile(title: patientGender),
                    SizedBox(height: height1,),
                    SubmitButton(
                      title: "Chat",
                      icon: CupertinoIcons.chat_bubble_2_fill,
                      bgColor: bgColor,
                      textColor: themeColor,
                      iconColor: themeColor,
                      press: () {

                      },),
                    SizedBox(height: height1,),
                    Container(
                      width: 100.w,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xffE6F5FC),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: greyColor,
                            blurRadius: 1,
                            spreadRadius: .5
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Active Medical Conditions", fontSize: 18.sp,
                            fontWeight: FontWeight.w600, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.semiBold,),
                          SizedBox(height: height1,),
                          const DottedLine(color: greyColor,),
                          SizedBox(height: height1,),
                          TextWidget(
                            text: "1. Heart Burn", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),
                          TextWidget(
                            text: "2. Hypertension", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),
                          TextWidget(
                            text: "3. Diabetes Mellitus", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),


                        ],
                      ),
                    ),
                    SizedBox(height: height1,),
                    Container(
                      width: 100.w,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xffE6F5FC),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: greyColor,
                            blurRadius: 1,
                            spreadRadius: .5
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Resolved Medical Conditions", fontSize: 18.sp,
                            fontWeight: FontWeight.w600, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.semiBold,),
                          SizedBox(height: height1,),
                          const DottedLine(color: greyColor,),
                          SizedBox(height: height1,),
                          TextWidget(
                            text: "1. Diarrhea", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),
                          TextWidget(
                            text: "2. Hypovolemia", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),
                          TextWidget(
                            text: "3. Gastritis", fontSize: 18.sp,
                            fontWeight: FontWeight.w400, isTextCenter: false,
                            textColor: textColor, fontFamily: AppFonts.regular,),


                        ],
                      ),
                    ),
                    SizedBox(height: height1,),
                    TextWidget(
                      text: "Medication List", fontSize: 18.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height1,),
                    Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: greyColor)
                      ),
                      child: ListTile(
                        leading: SvgPicture.asset(AppIcons.radioOffIcon),
                        title: TextWidget(
                          text: "Tab Valsartan 80mg", fontSize: 16.sp,
                          fontWeight: FontWeight.w500, isTextCenter: false,
                          textColor: textColor, fontFamily: AppFonts.medium,),
                        subtitle: TextWidget(
                          text: "Dosage: 1 q.d - qAM", fontSize: 12.sp,
                          fontWeight: FontWeight.w400, isTextCenter: false,
                          textColor: textColor, fontFamily: AppFonts.regular,),
                      ),
                    ),
                    SizedBox(height: height1,),
                    TextWidget(
                      text: "Past Medical History", fontSize: 18.sp,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                    SizedBox(height: height1,),
                    Container(
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: greyColor)
                      ),
                      child: ListTile(
                        title: TextWidget(
                          text: "Gastrectomy", fontSize: 16.sp,
                          fontWeight: FontWeight.w500, isTextCenter: false,
                          textColor: textColor, fontFamily: AppFonts.medium,),
                        subtitle: TextWidget(
                          text: "27 July 2024", fontSize: 12.sp,
                          fontWeight: FontWeight.w400, isTextCenter: false,
                          textColor: textColor, fontFamily: AppFonts.regular,),
                      ),
                    ),
                    SizedBox(height: height1,),
                    SubmitButton(
                      title: "Check Reports",
                      press: () {

                    },),
                    SizedBox(height: height1,),
                  ],
            ))
          ],
        ),
      ),
    );
  }
}
