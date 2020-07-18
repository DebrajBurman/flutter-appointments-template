import 'package:appointments/Design.dart';
import 'package:appointments/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appointments/Design.dart';
import 'mode.dart';
import 'package:dotted_border/dotted_border.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black87,
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Appointments',
          style: TextStyle(
            color: Colors.deepPurple[900],
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey[350],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListCard(
                    colour: k_card1,
                    child: CardDesign(
                      text: 'Design Meeting',
                      time: '10:00-11:30',
                      date: 'Today',
                      ic_color: k_card1_icon,
                      text_color: k_card1_icon,
                      card_color: k_card1_back,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListCard(
                    colour: k_card2,
                    child: CardDesign(
                      text: 'Development Meeting',
                      time: '10:00-11:30',
                      date: 'Tomorrow',
                      ic_color: k_card2_icon,
                      text_color: k_card2_icon,
                      card_color: k_card2_back,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListCard(
                    colour: k_card3,
                    child: CardDesign(
                      text: 'Development Meeting',
                      time: '10:00-11:30',
                      date: 'Tomorrow',
                      ic_color: k_card3_icon,
                      text_color: k_card3_icon,
                      card_color: k_card3_back,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Add_task(
                    icon: Icons.add,
                    text: 'Add New Task',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  Widget child;
  Color colour;
  ListCard({this.child, this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(7.0),
      padding: EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

class Add_task extends StatelessWidget {
  IconData icon;
  String text;
  Add_task({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: DottedBorder(
        color: Colors.grey[400],
        strokeWidth: 2,
        dashPattern: [5, 10],
        child: Container(
          margin: EdgeInsets.all(7.0),
          padding: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 0.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                  decoration: BoxDecoration(
                    color: k_card3_back,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
