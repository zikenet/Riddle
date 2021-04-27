import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trick_and_brain_riddles/components/page_model.dart';
import 'package:trick_and_brain_riddles/constants.dart';
import 'package:trick_and_brain_riddles/screens/home_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<PageModel> list = PageModel.list;
  var _controller = PageController();
  var initialPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: backgroundDecoration,
        child: Column(
          children: <Widget>[
            _appBar(),
            _body(_controller),
            _indicator(),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (initialPage > 0)
                _controller.animateToPage(initialPage - 1,
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn);
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(50),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.arrow_back_ios, color: Colors.white,),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // if (initialPage < list.length)
              //   _controller.animateToPage(list.length,
              //       duration: Duration(microseconds: 500),
              //       curve: Curves.easeIn);
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              'skip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                fontFamily: 'SourceSans',
              ),
            ),
          )
        ],
      ),
    );
  }

  _indicator() {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Color.fromRGBO(43, 88, 118, 1)),
                value: (initialPage + 1) / (list.length + 1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (initialPage < list.length)
                  _controller.animateToPage(initialPage + 1,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(43, 88, 118, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _body(PageController controller) {
    return Expanded(
      child: PageView.builder(
          controller: controller,
          itemCount: PageModel.list.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                _displayImage(PageModel.list[index].id),
                SizedBox(
                  height: 12,
                ),
                _displayText(PageModel.list[index].text),
              ],
            );
          }),
    );
  }

  _displayText(String text) {
    return Text(
      "$text",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Pacifico',
        color: Colors.white,
        fontSize: 12.0,
        letterSpacing: 2.5,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _displayImage(int path) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: 400,
      child: Lottie.asset("assets/images/$path.json"),
    );
  }
}
