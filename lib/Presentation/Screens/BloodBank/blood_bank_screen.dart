import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_constants.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';

class BloodBankScreen extends StatefulWidget {
  const BloodBankScreen({super.key});

  @override
  State<BloodBankScreen> createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            )),
        title: const Text(
          AppStrings.bloodBank,
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: ListView.builder(
        itemCount: AppConstants.hospitalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Text("H"),
              ),
              title: Text(
                AppConstants.hospitalData[index].hospitalName.toString(),
              ),
              subtitle: Text(
                AppConstants.hospitalData[index].hospitalLocation.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}
