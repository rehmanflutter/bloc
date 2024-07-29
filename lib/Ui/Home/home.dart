import 'package:animate_do/animate_do.dart';
import 'package:block_count/Ui/Home/filter.dart';
import 'package:block_count/main.dart';
import 'package:block_count/utils/images.dart';
import 'package:block_count/utils/textCustam.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  List listimages = [
    Images.image,

    Images.img1,
    Images.img4,
    Images.image5,
    Images.image2,
    //  Images.image6,
    //Images.imag7,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textcustam(
                        text: '    Location',
                        size: 10,
                        col: Color(0xff777E90),
                      ),
                      8.height,
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Color(0xff2FA2B9),
                          ),
                          Textcustam(
                            text: '  Hanoi, Vietnam',
                            weight: FontWeight.w600,
                          ),
                        ],
                      )
                    ],
                  ),
                  FadeInRight(
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Filters(),
                                  ));
                            },
                            child: Image.asset('images/Options.png')),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: lightgray)),
                          child: Image.asset('images/Notification.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              10.height,
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listimages.length,
                itemBuilder: (context, index) {
                  return FadeInUp(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                              image: AssetImage(listimages[index]),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //   8.height,
                            // CircleAvatar(
                            //   backgroundColor: Colors.white54,
                            //   child: Icon(
                            //     Icons.favorite,
                            //     color: Colors.red,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
