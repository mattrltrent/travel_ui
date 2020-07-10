import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteruitest/CW_body_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  int screenPos = 1;

  int img = 1;
  int dateNum = 27;
  String month = 'Sept';
  String title = 'Home Decor';
  String times = '10:45 am - 11:45 am';

  double heightFactor;
  double widthFactor;

  AnimationController ctrlr1;
  Animation anim1;

  @override
  void initState() {
    ctrlr1 = AnimationController(
      duration: Duration(milliseconds: 750),
      vsync: this,
    );
    anim1 = CurvedAnimation(parent: ctrlr1, curve: Curves.easeInOutQuint);
    ctrlr1.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    ctrlr1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    heightFactor = MediaQuery.of(context).size.height / 100;
    widthFactor = MediaQuery.of(context).size.width / 100;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(
                    top: heightFactor * 16, bottom: heightFactor * 9),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          right: widthFactor * 3,
                          left: widthFactor * 3,
                          top: widthFactor * 1.5,
                          bottom: widthFactor * 1.5),
                      width: widthFactor * 94,
                      height: heightFactor * 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black12,
                            offset: Offset(2, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(top: heightFactor * 1),
                              child: FractionallySizedBox(
                                widthFactor: 0.925,
                                heightFactor: 0.8,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Text(
                                      'Trainings',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Ub',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: widthFactor * 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 5,
                                            height: heightFactor * 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.lightBlueAccent,
                                                    Colors.blue
                                                  ],
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    heightFactor * 0.75),
                                                child: FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Icon(Icons.person,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.airport_shuttle,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.send,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.camera_alt,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.bookmark_border,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.print,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.fastfood,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.notifications,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.calendar_today,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 18,
                            child: IgnorePointer(
                              ignoring: anim1.value > 0 ? true : false,
                              child: Stack(
                                fit: StackFit.passthrough,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        child: Transform.translate(
                                          offset: Offset(
                                              anim1.value * (widthFactor * 50), 0),
                                          child: Row(
                                            children: <Widget>[
                                              BodyTile(
                                                  heightFactor: heightFactor,
                                                  widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                              BodyTile(
                                                heightFactor: heightFactor,
                                                widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                              BodyTile(
                                                heightFactor: heightFactor,
                                                widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IgnorePointer(
                                    ignoring: true,
                                    child: Transform.scale(
                                      scale: 1.005,
                                      child: Container(
                                        color: Colors.white.withOpacity(anim1.value),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: widthFactor * 3,
                          left: widthFactor * 3,
                          top: widthFactor * 1.5,
                          bottom: widthFactor * 1.5),
                      width: widthFactor * 94,
                      height: heightFactor * 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black12,
                            offset: Offset(2, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(top: heightFactor * 1),
                              child: FractionallySizedBox(
                                widthFactor: 0.925,
                                heightFactor: 0.8,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: Text(
                                      'Trainings',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Ub',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: widthFactor * 4),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 5,
                                            height: heightFactor * 5,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Colors.lightBlueAccent,
                                                    Colors.blue
                                                  ],
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    heightFactor * 0.75),
                                                child: FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Icon(Icons.person,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.airport_shuttle,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.send,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.camera_alt,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.bookmark_border,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.print,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.fastfood,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(Icons.notifications,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: widthFactor * 5),
                                          child: SizedBox(
                                            width: heightFactor * 3,
                                            height: heightFactor * 3,
                                            child: FittedBox(
                                              fit: BoxFit.contain,
                                              child: Container(
                                                child: Icon(
                                                    Icons.calendar_today,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 18,
                            child: IgnorePointer(
                              ignoring: anim1.value > 0 ? true : false,
                              child: Stack(
                                fit: StackFit.passthrough,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: SingleChildScrollView(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        child: Transform.translate(
                                          offset: Offset(
                                              anim1.value * (widthFactor * 50), 0),
                                          child: Row(
                                            children: <Widget>[
                                              BodyTile(
                                                heightFactor: heightFactor,
                                                widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                              BodyTile(
                                                heightFactor: heightFactor,
                                                widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                              BodyTile(
                                                heightFactor: heightFactor,
                                                widthFactor: widthFactor,
                                                dateNum: dateNum,
                                                title: title,
                                                times: times,
                                                img: img,
                                                month: month,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IgnorePointer(
                                    ignoring: true,
                                    child: Transform.scale(
                                      scale: 1.005,
                                      child: Container(
                                        color: Colors.white.withOpacity(anim1.value),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: heightFactor * 15,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      color: Colors.black12,
                      offset: Offset(2, 1)),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: heightFactor * 1),
                      child: FractionallySizedBox(
                        widthFactor: 0.3,
                        heightFactor: 0.3,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Container(
                            child: Text(
                              'MY CLASSES',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ub',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: heightFactor * 3),
                      child: Center(
                        child: Container(
                          width: widthFactor * 85,
                          height: heightFactor * 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  color: Colors.black12,
                                  offset: Offset(2, 1))
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: FractionallySizedBox(
                                  widthFactor: 0.4,
                                  heightFactor: 0.4,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Container(
                                      child: Icon(Icons.search,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: FractionallySizedBox(
                                  widthFactor: 1,
                                  heightFactor: 0.4,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    fit: BoxFit.contain,
                                    child: Container(
                                      child: Text(
                                        'Search (categories, classes, trainers)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Ub',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: double.infinity,
                  height: heightFactor * 8,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                      icon:
                                          Icon(Icons.home, color: Colors.green),
                                      onPressed: () {}),
                                ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.calendar_today,
                                          color: Colors.red),
                                      onPressed: () {}),
                                ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.search,
                                          color: Colors.purple),
                                      onPressed: () {
                                        screenPos == 1 ? screenPos = 2 : screenPos = 1;
                                        ctrlr1.forward();
                                        anim1.addStatusListener((status) {
                                          if (status == AnimationStatus.completed) {
                                            ctrlr1.reverse();
                                            if (screenPos == 2) {
                                              setState(() {
                                                img = 2;
                                                dateNum = 4;
                                                month = 'Dec';
                                                title = 'Home Decor';
                                                times = '6:30 am - 8:45 am';
                                              });
                                            }
                                            else if (screenPos == 1) {
                                              setState(() {
                                                img = 1;
                                                dateNum = 27;
                                                month = 'Sept';
                                                title = 'Home Decor';
                                                times = '10:45 am - 11:45 am';
                                              });
                                            }
                                          }
                                        });
                                      }),
                                ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.favorite,
                                          color: Colors.blue),
                                      onPressed: () {}),
                                ))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          heightFactor: 0.8,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.person,
                                          color: Colors.orange),
                                      onPressed: () {}),
                                ))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
