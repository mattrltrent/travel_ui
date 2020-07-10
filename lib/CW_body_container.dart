import 'package:flutter/material.dart';

class BodyTile extends StatelessWidget {

  const BodyTile({
    Key key,
    @required this.img,
    @required this.title,
    @required this.dateNum,
    @required this.heightFactor,
    @required this.widthFactor,
    @required this.month,
    @required this.times,
  }) : super(key: key);

  final double heightFactor;
  final double widthFactor;
  final int img;
  final int dateNum;
  final String month;
  final String title;
  final String times;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: heightFactor,
          bottom: heightFactor * 3,
          left: widthFactor * 4,
          right: widthFactor * 2.5),
      child: Container(
        width: widthFactor * 60,
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black12,
              offset: Offset(2, 1),
            ),
          ],
          borderRadius: BorderRadius.all(
              Radius.circular(15)),
          image: DecorationImage(
            image: AssetImage(
                'images/decor$img.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                    top: heightFactor * 2,
                    right: widthFactor * 3),
                child: Container(
                  width: widthFactor * 12,
                  height: heightFactor * 6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black12,
                        offset: Offset(2, 1),
                      ),
                    ],
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 50,
                          child:
                          FractionallySizedBox(
                            widthFactor: 0.8,
                            heightFactor: 0.6,
                            child: FittedBox(
                              fit: BoxFit
                                  .contain,
                              child:
                              Container(
                                child: Text(
                                  month,
                                  style:
                                  TextStyle(
                                    fontWeight:
                                    FontWeight
                                        .bold,
                                    fontFamily:
                                    'Ub',
                                    color: Colors
                                        .grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 60,
                          child:
                          FractionallySizedBox(
                            widthFactor: 0.8,
                            heightFactor: 0.8,
                            child: FittedBox(
                              fit: BoxFit
                                  .contain,
                              child:
                              Container(
                                child: Text(
                                  '$dateNum',
                                  style:
                                  TextStyle(
                                    fontWeight:
                                    FontWeight
                                        .bold,
                                    fontFamily:
                                    'Ub',
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
            Transform.translate(
              offset:
              Offset(0, heightFactor),
              child: Align(
                alignment:
                Alignment.bottomCenter,
                child: Container(
                  width: widthFactor * 50,
                  height: heightFactor * 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black12,
                        offset: Offset(2, 1),
                      ),
                    ],
                  ),
                  child: FractionallySizedBox(
                    heightFactor: 0.8,
                    widthFactor: 0.9,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 50,
                          child:
                          FractionallySizedBox(
                            widthFactor: 1,
                            heightFactor: 0.7,
                            child: FittedBox(
                              fit: BoxFit
                                  .contain,
                              child:
                              Container(
                                child: Text(
                                  title,
                                  style:
                                  TextStyle(
                                    fontWeight:
                                    FontWeight
                                        .bold,
                                    fontFamily:
                                    'Ub',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 60,
                          child:
                          FractionallySizedBox(
                            widthFactor: 0.8,
                            heightFactor: 0.8,
                            child: FittedBox(
                              fit: BoxFit
                                  .contain,
                              child:
                              Container(
                                child: Text(
                                  times,
                                  style:
                                  TextStyle(
                                    fontWeight:
                                    FontWeight
                                        .bold,
                                    fontFamily:
                                    'Ub',
                                    color: Colors.grey,
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
    );
  }
}