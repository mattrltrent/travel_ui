import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double heightFactor;
  double widthFactor;

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
                      margin: EdgeInsets.only(right: widthFactor * 3, left: widthFactor * 3, top: widthFactor * 1.5, bottom: widthFactor * 1.5),
                      width: double.infinity,
                      height: heightFactor * 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black12,
                            offset: Offset(2, 1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: widthFactor * 3, left: widthFactor * 3, top: widthFactor * 1.5, bottom: widthFactor * 1.5),
                      width: double.infinity,
                      height: heightFactor * 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black12,
                            offset: Offset(2, 1),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(20),),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.home, color: Colors.green),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(20),),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.calendar_today, color: Colors.red),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(20),),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.search, color: Colors.purple),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(20),),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.favorite, color: Colors.blue),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Material(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(20),),
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.person, color: Colors.orange),
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
