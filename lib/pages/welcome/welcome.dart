import 'package:flutter/material.dart';

import 'package:ulearning_app/pages/welcome/page_view.dart';


class Welcome extends StatelessWidget {
    Welcome({super.key});
final PageController _controller = PageController(initialPage: 0);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children:  [
              PageViewChildWidget(
                index: 1,
                controller: _controller,
                imageName: "assets/images/reading.png",
                titleFontSize: 24,
                titleName: "First See Learning",
                subtitle:
                    "Forget about of paper of all knowledge in one learning",
                subtitleFontSize: 16,
              ),
              PageViewChildWidget(
                index: 2,
                controller: _controller,
                imageName: "assets/images/boy.png",
                titleFontSize: 24,
                titleName: "First See Learning",
                subtitle:
                    "Anywhere, anytime. The time is at your discretion. So study whereever you can",
                subtitleFontSize: 16,
              ),
              PageViewChildWidget(
                index: 3,
                controller: _controller,
                imageName: "assets/images/man.png",
                titleFontSize: 24,
                titleName: "First See Learning",
                subtitle:
                    "Do what you want you are now man and spend your half of you life in this gola.",
                subtitleFontSize: 16,
              ),
            ],
          ),
          //   const Positioned(child: Text("Widget One"),
          //   bottom: 160,
          //   left: 200,

          //   ),
          //  const Positioned(child: Text("Widget Two"),
          //   bottom: 200,
          //   left: 300,
          //   )
        ],
      ),
    );
  }
}
