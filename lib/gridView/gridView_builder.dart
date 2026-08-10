import 'package:flutter/material.dart';

import '../models/onBoarding.dart';


class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/onBoarding1.png", title: "Welcome", description: "1200"),
    OnBoardingModel(image: "assets/images/onBoarding2.png", title: "Friendly Work", description: "2000"),
    OnBoardingModel(image: "assets/images/onBoarding3.png", title: "Join our Team", description: "1800"),
    OnBoardingModel(image: "assets/images/onBoarding1.png", title: "Welcome", description: "1200"),
    OnBoardingModel(image: "assets/images/onBoarding2.png", title: "Friendly Work", description: "2000"),
    OnBoardingModel(image: "assets/images/onBoarding3.png", title: "Join our Team", description: "1800"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 280
            ),
          itemCount: onBoardingList.length,
          itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                    width: 2
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)
                        ),
                        child: Image.asset(onBoardingList[index].image.toString(),
                        width: 250,height: 200,
                        fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(onBoardingList[index].title.toString(),style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("RS: ${onBoardingList[index].description.toString()}"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Rs: 4000",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough
                                )
                              ),
                              TextSpan(
                                text: " - 80%",
                              ),
                            ]
                          )),
                    )
                  ],
                ),
              );
          },
            ),
      ),
    );
  }
}
