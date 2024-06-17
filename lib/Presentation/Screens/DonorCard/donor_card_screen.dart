import 'package:flutter/material.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_images.dart';
import 'package:flutter_blood_bank_app_clone/AppUtils/app_strings.dart';

class DonorCardScreen extends StatelessWidget {
  const DonorCardScreen({super.key});

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
          AppStrings.donorCard,
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
        child: SizedBox(
          height: 300,
          child: Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppImages.profileImg,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.kalpesh,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "1996-07-22",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                AppStrings.male,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "xxxxxxxx2772",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Divider(),
                  ),
                  const Text(
                    AppStrings.address,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    AppStrings.sector28gandhinagar,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
