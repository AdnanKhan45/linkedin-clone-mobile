
import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui/theme/styles.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  int _selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  _singleCategoryItem(
                      title: "All",
                      bgColor: _selectedCategoryIndex == 0? Colors.green[800] : linkedInWhiteFFFFFF,
                      textColor: _selectedCategoryIndex == 0? linkedInWhiteFFFFFF : linkedInMediumGrey86888A,
                      border: _selectedCategoryIndex == 0 ? 0 : 1,
                      onTap: () {
                        setState(() {
                          _selectedCategoryIndex = 0;
                        });
                      }
                  ),
                  const SizedBox(width: 10,),
                  _singleCategoryItem(
                      title: "My posts",
                      bgColor: _selectedCategoryIndex == 1? Colors.green[800] : linkedInWhiteFFFFFF,
                      textColor: _selectedCategoryIndex == 1? linkedInWhiteFFFFFF : linkedInMediumGrey86888A,
                      border: _selectedCategoryIndex == 1 ? 0 : 1,
                      onTap: () {
                        setState(() {
                          _selectedCategoryIndex = 1;
                        });
                      }
                  ),
                  const SizedBox(width: 10,),
                  _singleCategoryItem(
                      title: "Mentions",
                      bgColor: _selectedCategoryIndex == 2? Colors.green[800] : linkedInWhiteFFFFFF,
                      textColor: _selectedCategoryIndex == 2? linkedInWhiteFFFFFF : linkedInMediumGrey86888A,
                      border: _selectedCategoryIndex == 2 ? 0 : 1,
                      onTap: () {
                        setState(() {
                          _selectedCategoryIndex = 2;
                        });
                      }
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyCACCCE,
            ),
            ListView.builder(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),shrinkWrap: true, physics: const ScrollPhysics(),itemCount: 15,itemBuilder: (context, index) {
              return _singleNotificationWidget();
            })
          ],
        ),
      )
    );
  }

  _singleCategoryItem({String? title, Color? textColor, Color? bgColor, VoidCallback? onTap, double? border}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: border!),
          color: bgColor,
        ),
        child: Center(child: Text("$title", style: TextStyle(color: textColor, fontWeight: FontWeight.bold),),),
      ),
    );
  }

  _singleNotificationWidget() {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(borderRadius: BorderRadius.circular(35),child: Image.asset("assets/profile_2.jpeg", fit: BoxFit.cover,)),
              ),
              const SizedBox(width: 10,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stephan Covey", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text("commented on your post - check out", style: TextStyle(color: linkedInMediumGrey86888A),)
                ],
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1h", style: TextStyle(color: linkedInMediumGrey86888A, fontSize: 12),),
              Icon(Icons.more_vert, color: linkedInMediumGrey86888A,)
            ],
          )

        ],
      ),
    );
  }
}
