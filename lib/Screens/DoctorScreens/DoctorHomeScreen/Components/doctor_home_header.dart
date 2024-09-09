import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tabibinet_project/Providers/DoctorProfile/doctor_profile_provider.dart';
import 'package:tabibinet_project/Screens/DoctorScreens/DoctorNotification/doctor_notification_screen.dart';

import '../../../../constant.dart';
import '../../../../model/res/constant/app_icons.dart';
import '../../../../model/res/helpers/image_loader.dart';
import '../../../../model/res/widgets/text_widget.dart';
import '../../DoctorProfileScreen/doctor_profile_screen.dart';


class DoctorHomeHeader extends StatelessWidget {
  const DoctorHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: SizedBox(
        height: 72,
        child: Row(
          children: [
            Consumer<DoctorProfileProvider>(
              builder: (context, value, child) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ImageLoaderWidget(imageUrl: "")
                    // value.image != null ? Image.file(
                    //   value.image!,
                    //   fit: BoxFit.cover,)
                    //     : const SizedBox(),
                  ),
                );
            },),
            const SizedBox(width: 10,),
            Consumer<DoctorProfileProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: "Hi, ${value.doctorName}", fontSize: 20,
                        fontWeight: FontWeight.w600, isTextCenter: false,
                        textColor: textColor),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                      decoration: BoxDecoration(
                          color: greenColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: [
                          TextWidget(text: value.doctorCountry, fontSize: 12, fontWeight: FontWeight.w400, isTextCenter: false, textColor: textColor),
                          const Icon(Icons.location_on,color: themeColor,size: 20,),
                        ],
                      ),
                    ),
                  ],
                );
            },),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.to(()=>const DoctorNotificationScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: textColor,
                        width: 1.5
                    )
                ),
                child: SvgPicture.asset(AppIcons.bellIcon_2,height: 20,),
              ),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: () {
                Get.to(()=>const DoctorProfileScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: textColor,
                        width: 1.5
                    )
                ),
                child: SvgPicture.asset(
                  AppIcons.profileIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
