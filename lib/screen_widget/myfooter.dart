import 'package:flutter/cupertino.dart';
import 'package:zero_pls/constant_widget/hw_widget.dart';
import '../constant_widget/social_media_url.dart';
import 'myprofile.dart';

class MyFooter extends StatefulWidget {
   MyFooter({super.key});

  @override
  State<MyFooter> createState() => _MyFooterState();
}

class _MyFooterState extends State<MyFooter> {
  final UrlHelper _urlHelper = UrlHelper();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.all( screenWidth > 500 ? 50 : 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.height,
          Row(
            children: [
              buildTextButton(
                title: "Instagram",
                url: _urlHelper.instagramProfile
              ),

              buildTextButton(
                  title: "LinkedIn",
                  url: _urlHelper.linkedInChat
              ),

              buildTextButton(
                  title: "GitHub",
                  url: _urlHelper.githubProfile
              ),


              buildTextButton(
                  title: "Email",
                  url: _urlHelper.emailUri
              ),
            ],
          ),
          5.height,

          const TextPadding(title: "Address- Waidhan Singrauli M.P. - 486886",
            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }

  buildTextButton({required String title, required Uri url}) {
    return TextPadding(
      onTap: () => _urlHelper.launchCustomUrl(url),
      title: title,
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      padding: const EdgeInsets.only(right: 10),);
  }
}

