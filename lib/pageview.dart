import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sudais_frontend/models/onBoarding.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/onBoarding1.png", title: "Welcome", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
    OnBoardingModel(image: "assets/images/onBoarding2.png", title: "Friendly Work", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
    OnBoardingModel(image: "assets/images/onBoarding3.png", title: "Join our Team", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: controller,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Image.asset(onBoardingList[index].image,width: double.infinity,height: 500,fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                  Text(onBoardingList[index].title,style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(onBoardingList[index].description,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    ),),
                  ),

                ],
              );
            },),
          ),
          SizedBox(height: 10,),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                      )

                  )
                  , child: Text("Next")),
            ),
          )
        ],
      ),
    );
  }
}
