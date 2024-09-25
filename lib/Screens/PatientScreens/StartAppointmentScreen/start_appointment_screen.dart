import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constant.dart';
import '../../../model/res/constant/app_fonts.dart';
import '../../../model/res/constant/app_icons.dart';
import '../../../model/res/widgets/header.dart';
import '../../../model/res/widgets/submit_button.dart';
import '../../../model/res/widgets/text_widget.dart';
import '../AppointmentScheduleScreen/Components/fee_container.dart';
import '../VoiceCallScreen/appointment_voice_call_screen.dart';

class StartAppointmentScreen extends StatelessWidget {
  StartAppointmentScreen({
    super.key,
    required this.doctorName,
    required this.appointmentTime,
    required this.consultancyType,
    required this.consultancyFee,
    required this.consultancySubTitle,
  });

  final String doctorName;
  final String appointmentTime;
  final String consultancyType;
  final String consultancyFee;
  final String consultancySubTitle;

  final timeC = TextEditingController();

  final List<String> _dropdownItems = ['Consultancy', 'Video Call', 'Help Center '];

  @override
  Widget build(BuildContext context) {

    double height1 = 20;
    double height2 = 10;

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            const Header(text: "Start Appointment"),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  SizedBox(height: height1,),
                  Center(
                      child: SvgPicture.asset(AppIcons.notificationIcon)
                  ),
                  SizedBox(height: height1,),
                  TextWidget(
                    text: "You have received an Appointment Invitation From DR $doctorName",
                    fontSize: 20,
                    fontWeight: FontWeight.w600, isTextCenter: true, maxLines: 2,
                    textColor: textColor, fontFamily: AppFonts.semiBold,),
                  const SizedBox(height: 40,),
                  const TextWidget(
                    text: "Appointment Information", fontSize: 20,
                    fontWeight: FontWeight.w600, isTextCenter: false,
                    textColor: textColor, fontFamily: AppFonts.semiBold,),
                  SizedBox(height: height1,),
                  const TextWidget(
                    text: "Appointment Time", fontSize: 14,
                    fontWeight: FontWeight.w600, isTextCenter: false,
                    textColor: textColor, fontFamily: AppFonts.semiBold,),
                  SizedBox(height: height2,),
                  Container(
                    width: 100.w,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: themeColor
                      )
                    ),
                    child: TextWidget(
                      text: appointmentTime, fontSize: 16,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                  ),
                  SizedBox(height: height1,),
                  const TextWidget(
                    text: "Consultation Type", fontSize: 14,
                    fontWeight: FontWeight.w600, isTextCenter: false,
                    textColor: textColor, fontFamily: AppFonts.semiBold,),
                  SizedBox(height: height2,),
                  Container(
                    width: 100.w,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: themeColor
                        )
                    ),
                    child: TextWidget(
                      text: consultancyType, fontSize: 16,
                      fontWeight: FontWeight.w600, isTextCenter: false,
                      textColor: textColor, fontFamily: AppFonts.semiBold,),
                  ),
                  SizedBox(height: height1,),
                  FeeContainer(
                    title: consultancyType,
                    subTitle: consultancySubTitle,
                    fees: consultancyFee,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SubmitButton(
            title: "Continue",
            press: () {
              Get.to(()=> const AppointmentVoiceCallScreen());
            },),
        ),
      ),
    );
  }
}


//Consumer<PatientHomeProvider>(
//                     builder: (context, provider, child) {
//                     return ReusableDropdown(
//                       width: 100.w,
//                       verticalPad: 5.0,
//                       borderRadius: 15,
//                       fontSize: 16,
//                       selectedValue: provider.selectedAppointmentType,
//                       items: _dropdownItems,
//                       fontFamily: AppFonts.semiBold,
//                       borderColor: themeColor,
//
//                       hintText: "All",
//                       onChanged: (value) {
//                         provider.setAppointmentType(value!);
//                     },);
//                   },),