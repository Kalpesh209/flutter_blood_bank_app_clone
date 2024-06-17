import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/Auth/select_login_register.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/BloodBank/blood_bank_screen.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/BloodRequest/blood_request_form_screen.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/DonorCard/donor_card_screen.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/SearchDonor/select_blood_group.dart';
import 'package:flutter_blood_bank_app_clone/Presentation/Screens/my_notes_screen.dart';
import '../AddDonor/donor_form.dart';

List<Map<String, dynamic>> bloodbank = [
  {
    'icon': Icons.credit_card,
    'title': AppStrings.donorCard,
  },
  {
    'icon': Icons.person_add,
    'title': AppStrings.addDonor,
  },
  {
    'icon': Icons.search,
    'title': AppStrings.searchDonor,
  },
  {
    'icon': Icons.question_mark,
    'title': AppStrings.bloodRequest,
  },
  {
    'icon': Icons.account_balance,
    'title': AppStrings.bloodBank,
  },
  {
    'icon': Icons.edit_note,
    'title': AppStrings.myNotes,
  },
];

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double hSize = MediaQuery.of(context).size.height;
    // double wSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Row(
          children: [
            Icon(
              Icons.bloodtype,
              color: Colors.white,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              AppStrings.bloodBank,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
          ),
          itemCount: bloodbank.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                switch (bloodbank[index]['title']) {
                  case AppStrings.donorCard:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonorCardScreen()),
                      );
                    }
                    break;
                  case AppStrings.addDonor:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DonorFormScreen(),
                        ),
                      );
                    }
                    break;
                  case AppStrings.searchDonor:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectBloodGroupScreen(),
                        ),
                      );
                    }
                    break;
                  case AppStrings.bloodRequest:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BloodRequestFormScreen(),
                        ),
                      );
                    }
                    break;
                  case AppStrings.bloodBank:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BloodBankScreen()),
                      );
                    }
                    break;
                  case AppStrings.myNotes:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyNotesScreen(),
                        ),
                      );
                    }
                    break;
                }
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      bloodbank[index]['icon'],
                      size: 70,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      bloodbank[index]['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      // drawerScrimColor: Colors.deepPurpleAccent,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: hSize * 0.06,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                AppStrings.bloodBank,
                // "BLOOD BANK",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/icons/manIcon.png",
                ),
              ),
              title: Text(
                AppStrings.userName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                AppStrings.ahmedabad,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      AppStrings.proffession,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      AppStrings.mobileNo,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 2,
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.bloodtype_sharp,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    AppStrings.donationHistroy,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    AppStrings.locationHistroy,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.stars_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    AppStrings.rewardCard,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.people,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    AppStrings.inviteFriends,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // const Divider(thickness: 1.5,),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.paste_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                  Text(
                    AppStrings.privacyPolicy,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.call,
                    size: 24,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    AppStrings.call,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            // const Divider(thickness: 1.5,),
            ListTile(
              onTap: () {},
              title: const Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 24,
                    color: Colors.deepPurple,
                  ),
                  Text(
                    AppStrings.sendEmail,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectLRScreen(),
                  ),
                );
              },
              title: const Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 24,
                    color: Colors.red,
                  ),
                  Text(
                    AppStrings.logout,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
