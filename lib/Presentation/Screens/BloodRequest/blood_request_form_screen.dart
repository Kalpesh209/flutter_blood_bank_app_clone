import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_text_style.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/AddDonor/added_donor_data.dart';

class BloodRequestFormScreen extends StatefulWidget {
  const BloodRequestFormScreen({super.key});

  @override
  State<BloodRequestFormScreen> createState() => _BloodRequestFormState();
}

class _BloodRequestFormState extends State<BloodRequestFormScreen> {
  // int? _id;
  String? _bloodGroup;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _aadharNumber = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _hospitalName = TextEditingController();
  final TextEditingController _hospitalLocation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double gape = 10;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
          AppStrings.donorForm,
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            TextFormField(
              controller: _name,
              decoration: InputDecoration(
                labelText: AppStrings.name,
                icon: const Icon(Icons.person),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleaseName;
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _phoneNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppStrings.mobileNotxt,
                icon: const Icon(Icons.call),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleasenumber;
                } else if (value.length == 10) {
                  return null;
                }
                return AppStrings.please10Digit;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _age,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppStrings.age,
                icon: const Icon(Icons.perm_contact_cal),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleaseAge;
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _aadharNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: AppStrings.aadharCard,
                icon: const Icon(Icons.credit_card),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleaseName;
                } else if (value.length == 12) {
                  return null;
                }
                return AppStrings.caret;
              },
            ),
            SizedBox(
              height: gape,
            ),
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text(
                AppStrings.selectBloodGrouptxt,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButton("A +"),
                      _radioButton("A -"),
                      _radioButton("B +"),
                      _radioButton("B -")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _radioButton("AB +"),
                      _radioButton("AB -"),
                      _radioButton("O +"),
                      _radioButton("O -")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _hospitalName,
              decoration: InputDecoration(
                labelText: AppStrings.hospitalName,
                icon: const Icon(Icons.local_hospital),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleaseEnterHospitalName;
                }
                return null;
              },
            ),
            SizedBox(
              height: gape,
            ),
            TextFormField(
              controller: _hospitalLocation,
              decoration: InputDecoration(
                labelText: AppStrings.hospitalLocation,
                icon: const Icon(Icons.add_location_sharp),
                iconColor: Colors.deepPurple,
                enabledBorder: AppTextStyle.enabledBorder,
                disabledBorder: AppTextStyle.enabledBorder,
                focusedBorder: AppTextStyle.focusedBorder,
                errorBorder: AppTextStyle.errorBorder,
                focusedErrorBorder: AppTextStyle.errorBorder,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.pleaseEnterHospitalLocation;
                }
                return null;
              },
            ),
            SizedBox(
              height: gape + gape,
            ),
            ElevatedButton(
              child: Text(
                AppStrings.submit,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate() &&
                    _bloodGroup!.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddedDonorData(),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.deepPurple,
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _radioButton(String title) {
    return SizedBox(
      child: Row(
        children: [
          Radio(
              value: title,
              groupValue: _bloodGroup,
              onChanged: (value) {
                setState(() {
                  _bloodGroup = value;
                });
              }),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
