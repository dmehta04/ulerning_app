import 'package:flutter/material.dart';
import 'package:ulearning_app/pages/welcome/textWidget.dart';
import 'package:ulearning_app/utils/app_colors.dart';

class PageViewChildWidget extends StatelessWidget {
  final String imageName;
  final String titleName;
  final double titleFontSize;
  final String subtitle;
  final double subtitleFontSize;
 final int index;
 final PageController controller;
 

  const PageViewChildWidget({super.key, required this.imageName, required this.titleName, required this.titleFontSize, required this.subtitle, required this.subtitleFontSize, required this.index, required this.controller, });

  
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Image.asset(imageName,),
                 Container(
                  margin: const EdgeInsets.only(top: 15),
                  child:  TextWidget(title: titleName,fontSize: titleFontSize,color: AppColors.primaryText,)),
                 Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child:  TextWidget(title: subtitle,fontSize: subtitleFontSize,color:AppColors.primarySecondaryElementText)),

                  GestureDetector(
                    onTap: () {
                   if(index <3){
                      print('My Index is $index');
                    controller.animateToPage(index, duration: const Duration(microseconds: 400), curve: Curves.bounceInOut);
                   }
                    
                    },
                    child: Container(
                      width: 325,
                      height: 50,
                      margin: const EdgeInsets.only(top: 100,left: 25,right: 25),
                      decoration: BoxDecoration(
                        color: AppColors.primaryElement,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0,1)
                            ),
                  
                        ],
                  
                      ),
                      child: const Center(child:  TextWidget(title: 'Next', color: AppColors.primaryBackground,fontSize: 16)),
                    
                    ),
                  )
               
                ],
              );
  }
}