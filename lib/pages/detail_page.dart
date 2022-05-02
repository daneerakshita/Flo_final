import 'package:kartik/data/data.dart';
import 'package:kartik/widget/appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MaterialButton(
            onPressed: () {},
            height: 50,
            minWidth: 160,
            color: Color(0xff232F3E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
              ),
            ),
            child: Text(
              'Terms of use',
              style: TextStyle(
                color: AppColors.KWhite,
              ),
            ),
          ),
        ],
      ),
      appBar: appbar(isIcon: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Cycle History",
                        style: TextStyle(
                          fontSize: 27,
                          color: Color(0xff232F3E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flo Health Assistance ",
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.KpColor,
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                  Image.asset("images/image2.png"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Current cycle",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "28 days",
                            style: TextStyle(
                              color: Color(0xffef0505),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Ovulation in",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "9 days",
                            style: TextStyle(
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Chance of getting pregnant:",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff232f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Low",
                            style: TextStyle(
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Report",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "YOUR LAST CYCLE WAS LONGER THAN 35 DAY. We've prepared a personalized cycle report so you can monitor body signals.",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff8F8F8F),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
