/*
Title: AppConstants used thorough App
Purpose:AppConstants used thorough App
Created On: 20/03/2024
Edited On:20/03/2024
Author: Kalpesh Khandla
*/

import 'package:flutter_blood_bank_app_clone/Models/hospital_model.dart';

class AppConstants {
  // Base Image Path
  static const String baseImagePath = 'assets/images';

  static List<HospitalModel> hospitalData = [
    HospitalModel(
      id: 01,
      hospitalName: "Namostute Hospital",
      hospitalLocation: "GandhiNagar",
    ),
    HospitalModel(
      id: 02,
      hospitalName: "Rakesh Hospital",
      hospitalLocation: "Nikol",
    ),
    HospitalModel(
      id: 03,
      hospitalName: "DK Hospital",
      hospitalLocation: "Vastral",
    ),
    HospitalModel(
      id: 04,
      hospitalName: "Param Hospital",
      hospitalLocation: "Vastral",
    ),
    HospitalModel(
      id: 05,
      hospitalName: "Akash Hospital",
      hospitalLocation: "Iskcon",
    ),
    HospitalModel(
      id: 06,
      hospitalName: "Paras Hospital",
      hospitalLocation: "Iskcon",
    )
  ];
}
