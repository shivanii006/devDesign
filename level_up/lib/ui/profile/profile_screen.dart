import 'package:flutter/material.dart';
import 'package:level_up/constants/colors.dart';
import 'package:level_up/constants/dimensions.dart';
import 'package:level_up/helper_widget.dart';
import 'package:level_up/constants/strings.dart';

import 'package:level_up/widgets/elevated_card.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: margin_20),
            child: Icon(
              Icons.backspace_outlined,
              size: margin_25,
            ),
          ),
        ],
        iconTheme: IconThemeData(color: red),
        backgroundColor: white,
        elevation: 0,
        bottom: PreferredSize(
            child: Container(color: black, height: 1),
            preferredSize: Size.fromHeight(4.0)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: margin_20),
          child: Column(
            children: [
              userDetail(),
              Divider(
                thickness: 0.6,
                color: black,
                indent: 20,
                endIndent: 20,
              ),
              ElevatedCard(
                title: profile,
                prefixIcon: Icons.account_circle,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
              ElevatedCard(
                title: lvlupstats,
                prefixIcon: Icons.category,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
              ElevatedCard(
                title: callSupportTeam,
                prefixIcon: Icons.call,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
              ElevatedCard(
                title: faqs,
                prefixIcon: Icons.local_library_outlined,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
              ElevatedCard(
                title: settings,
                prefixIcon: Icons.settings,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
              HelperWidget().vGap(gap: margin_50),
              ElevatedCard(
                title: logOut,
                prefixIcon: Icons.logout,
                suffixIcon: Icons.arrow_forward,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  userDetail() {
    return Container(
      height: height_130,
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(radius_30),
                  child: Image.network(
                    "https://sportzwiki.com/wp-content/uploads/2021/07/Muttiah-Muralitharan-file.jpg",
                    height: height_80,
                    width: height_80,
                    fit: BoxFit.fill,
                  )),
              Positioned(
                bottom: 1,
                right: 1,
                child: Icon(
                  Icons.edit,
                  size: margin_15,
                  color: red,
                ),
              ),
            ],
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HelperWidget().textStyleMedium(
                  text: "Muthaiya Murlitharan",
                  textOverflow: TextOverflow.ellipsis,
                  color: red,
                  fontSize: fontSize_20),
              HelperWidget().textStyleMedium(
                  text: "Right arm off break / pace",
                  textOverflow: TextOverflow.ellipsis,
                  color: red,
                  height: 1.5,
                  fontSize: fontSize_14),
            ],
          )
        ],
      ),
    );
  }
}
