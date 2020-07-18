import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mode.dart';
import 'constants.dart';

enum mode {
  call,
  video,
  text,
  unselect,
}

class CardDesign extends StatefulWidget {
  final String text, time, date;
  Color ic_color, text_color, card_color;

  CardDesign(
      {@required this.text,
      @required this.time,
      @required this.date,
      this.ic_color,
      this.text_color,
      this.card_color});

  @override
  _CardDesignState createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  mode selected_mode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Column(children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w900,
                      color: widget.text_color,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.time,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xffB0C5C5),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: Icon(
                        Icons.tag_faces,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: Icon(
                        Icons.tag_faces,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                      child: Icon(
                        Icons.tag_faces,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    widget.date,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffB0CAC8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          child: modeDesign(
                            icon: Icons.call,
                            color: widget.ic_color,
                          ),
                          onpress: () {
                            setState(() {
                              if (selected_mode == mode.call) {
                                selected_mode = mode.unselect;
                              } else
                                selected_mode = mode.call;
                            });
                          },
                          colour: selected_mode == mode.call
                              ? k_active_color
                              : widget.card_color,
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: modeDesign(
                            icon: Icons.video_call,
                            color: widget.ic_color,
                          ),
                          onpress: () {
                            setState(() {
                              if (selected_mode == mode.video)
                                selected_mode = mode.unselect;
                              else
                                selected_mode = mode.video;
                            });
                          },
                          colour: selected_mode == mode.video
                              ? k_active_color
                              : widget.card_color,
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: modeDesign(
                            icon: Icons.chat,
                            color: widget.ic_color,
                          ),
                          onpress: () {
                            setState(() {
                              if (selected_mode == mode.text)
                                selected_mode = mode.unselect;
                              else
                                selected_mode = mode.text;
                            });
                          },
                          colour: selected_mode == mode.text
                              ? k_active_color
                              : widget.card_color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 7.0,
        ),
      ],
    );
  }
}

class Card extends StatelessWidget {
  Widget child;
  Function onpress;
  Color colour;
  Card({this.child, this.onpress, this.colour});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onpress,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: child,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ));
  }
}
//decoration: BoxDecoration(
//        color: Color(0xffCDE4E2),
//      ),
