import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zero_pls/constant_widget/hw_widget.dart';

import '../constant_widget/social_media_url.dart';
import '../custom_widget/fonticons.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  final UrlHelper _urlHelper = UrlHelper();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Container(
      width: screenWidth > 600 ? screenWidth*0.3: double.infinity,
      height: screenHeight*0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth*0.02),
        color: Colors.deepOrange.shade100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 40,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /// My Image
               Container(
                 width: screenWidth > 600 ? screenWidth*0.2:screenWidth*0.6,
                 height: screenHeight*0.55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.02),
                  image: DecorationImage(image: 
                  AssetImage('assets/images/akshay.jpg'),fit: BoxFit.fill)
                ),
              ),


              10.height,
              const TextPadding(
                title: "Akshay Panika",
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const TextPadding(
                title: "Flutter Developer",
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

            ],
          ),


          /// Social media icon
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                FontIcons(
                  icon: FontAwesomeIcons.instagram,
                  onTap:() => _urlHelper.launchCustomUrl(_urlHelper.instagramProfile)),
                10.width,


                FontIcons(
                  icon: FontAwesomeIcons.linkedin,
                    onTap:() => _urlHelper.launchCustomUrl(_urlHelper.linkedInChat)),
                10.width,

                FontIcons(
                  icon: FontAwesomeIcons.github,
                    onTap:() => _urlHelper.launchCustomUrl(_urlHelper.githubProfile)),
                10.width,

                FontIcons(
                  icon: FontAwesomeIcons.youtube,
                  onTap: () {},),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class TextPadding extends StatelessWidget {
  final String title;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  const TextPadding({super.key, required this.title, this.padding, this.textStyle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:padding ?? const EdgeInsets.symmetric(vertical:0.0, horizontal: 0.0),
      child: InkWell(
          onTap: onTap,
          child: Text(title,style: textStyle,)),
    );
  }
}

