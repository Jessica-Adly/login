import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BordingModel
{
  final String image;
  final String title;
  final String body;

  BordingModel({
    required this.title,
    required this.image,
    required this.body,
});
}


class OnbordingScreen extends StatefulWidget {

  @override
  _OnbordingScreenState createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  var boardController = PageController();

  List<BordingModel> bording =[
    BordingModel(title: 'On Board 1 Title',
        image: 'images/onbording1.jpg',
        body: 'On Board 1 Body'),
    BordingModel(title: 'On Board 2 Title',
        image: 'images/onbording2.jpg',
        body: 'On Board 2 Body'),
    BordingModel(title: 'On Board 3 Title',
        image: 'images/onbording3.jpg',
        body: 'On Board 3 Body'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actions: [
        TextButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => LoginScreen(),
              ),
              );
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
        ),
      ],
    ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index)
                {
                  if(index == bording.length -1)
                {
                  setState(() {
                    isLast = true;
                  });

                }else
                  {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context,index) => buildBordingItem(bording[index]),
                itemCount: bording.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
               SmoothPageIndicator(
                   controller: boardController,
                   effect: ExpandingDotsEffect(
                     dotColor: Colors.grey,
                    activeDotColor: Colors.teal,
                    dotHeight: 10,
                     expansionFactor: 4,
                     dotWidth: 10,
                    spacing: 5.0,
                   ),
                   count: bording.length,
               ),
                Spacer(),
                FloatingActionButton(
                  onPressed: ()
                  {
                    if(isLast)
                    {
                      Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                          (Route<dynamic> route) => false,
                      );
                    }
                    else {
                    boardController.nextPage(
                        duration: Duration(
                          microseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                    );
                    }
                  },
                  child: Icon(
                  Icons.arrow_forward_ios,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBordingItem(BordingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(
          image: AssetImage('${model.image}'),
        ),
      ),
      Text(
        '${model.title}',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
    ],
  );
}