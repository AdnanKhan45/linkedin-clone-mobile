
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_mobile_ui/data/post_entity.dart';
import 'package:linkedin_mobile_ui/pages/main/home/widgets/single_post_card_widget.dart';
import 'package:linkedin_mobile_ui/theme/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ScrollController _controller = ScrollController();

  bool _isShow = true;

  List<PostEntity> postData = PostEntity.postListData;

  @override
  void initState() {
    _controller.addListener(() {
      if(_controller.position.pixels > 3) {
        setState(() {
          _isShow = false;
        });
      } else {
        setState(() {
          _isShow = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 5,),
          _isShow ?Container(
            width: double.infinity,
            height: 8,
            color: linkedInLightGreyCACCCE,
          ) : Container(),

          Expanded(
            child: ListView.builder(
              controller: _controller,
              itemCount: postData.length,
              itemBuilder: (context, index) {
                final post = postData[index];
                return SinglePostCardWidget(post: post);
              },
            ),
          ),
        ],
      )
    );
  }
}
