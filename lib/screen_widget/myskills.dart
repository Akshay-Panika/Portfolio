import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_widget/cardtext_widget.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      //color: Colors.blue,
      padding: EdgeInsets.only(top: 50),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: screenWidth > 500 ? 45 : 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

      ),
      child:    Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [


          /// Programming Language
          SkillsCard(
            headline: "Programming Language",
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                CardTextWidget(title: "Dart",
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                onTap: (){},),


                CardTextWidget(title: "Javascript",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Typescript",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Python",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

              ],
            ),
          ),


          /// Frame Work
          SkillsCard(
            headline: "Frame Work",
            child: Wrap(
              spacing: 10,
              runSpacing: 10,

              children: [
                CardTextWidget(title: "Flutter",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Firebase",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Nest Js",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),


                CardTextWidget(title: "WordPress",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

              ],
            ),
          ),


          /// Other Tools
          SkillsCard(
            headline: "Other Tools",
            child: Wrap(
              spacing: 10,
              runSpacing: 10,

              children: [
                CardTextWidget(title: "Canva",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Figma",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "Photoshop",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),


                CardTextWidget(title: "Illustrator",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

                CardTextWidget(title: "After Effect",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),


                CardTextWidget(title: "Blender",
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  onTap: (){},),

              ],
            ),
          )

        ],
      ),
    );
  }
}


class SkillsCard extends StatelessWidget {
  final String headline;
  final Widget child;
  const SkillsCard({super.key, required this.headline, required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Headline text
        Container(
            padding: const EdgeInsets.symmetric(horizontal:30, vertical: 10),
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
              ),
              color: Colors.deepOrange.shade100,
            ),
            child: Text(headline, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),

        /// Skills
        Container(
          width:screenWidth > 500 ?  400 : double.infinity,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.deepOrange.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: child),
            )),
      ],
    );
  }
}
