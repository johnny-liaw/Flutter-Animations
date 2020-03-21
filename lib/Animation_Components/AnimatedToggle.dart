import 'package:flutter/material.dart';

class AnimatedToggle extends StatefulWidget {
  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {

  bool toggledOn = false;
  int duration = 1000;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedContainer(
          width: 70,
          height: 30,
          duration: Duration(milliseconds: duration),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 2,
              color: toggledOn ? Colors.greenAccent[400] : Colors.redAccent[100],
            ),
          ),
          child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  top: 1.5,
                  left: toggledOn ? 2 : 38,
                  right: toggledOn ? 38 : 2,
                  duration: Duration(milliseconds: duration),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggledOn = !toggledOn;
                      });
                    },
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: duration),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return RotationTransition(child: child, turns: animation);
                      },
                      child: toggledOn ?
                      Icon(Icons.check_circle, color: Colors.greenAccent[400], key: UniqueKey()) :
                      Icon(Icons.remove_circle, color: Colors.redAccent[100], key: UniqueKey()),
                    ),
                  ),
                ),

              ]
          ),
        ),
        SizedBox(height: 10,),
        AnimatedContainer(
          width: 70,
          height: 30,
          duration: Duration(milliseconds: duration),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: toggledOn ? Colors.greenAccent[100] : Colors.red[100]
          ),
          child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  top: 2.5,
                  left: toggledOn ? 2 : 38,
                  right: toggledOn ? 38 : 2,
                  duration: Duration(milliseconds: duration),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggledOn = !toggledOn;
                      });
                    },
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: duration),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return RotationTransition(child: child, turns: animation);
                      },
                      child: toggledOn ?
                      Icon(Icons.check_circle, color: Colors.greenAccent[700], key: UniqueKey()) :
                      Icon(Icons.remove_circle, color: Colors.red[300], key: UniqueKey()),
                    ),
                  ),
                ),

              ]
          ),
        ),
        SizedBox(height: 10,),
        AnimatedContainer(
          width: 70,
          height: 30,
          duration: Duration(milliseconds: duration),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: toggledOn ? Colors.greenAccent[100] : Colors.red[100]
          ),
          child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  top: 2.5,
                  left: toggledOn ? 2 : 38,
                  right: toggledOn ? 38 : 2,
                  duration: Duration(milliseconds: duration),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        toggledOn = !toggledOn;
                      });
                    },
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: duration),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return ScaleTransition(child: child, scale: animation);
                      },
                      child: toggledOn ?
                      Icon(Icons.check_circle, color: Colors.greenAccent[700], key: UniqueKey()) :
                      Icon(Icons.remove_circle, color: Colors.red[300], key: UniqueKey()),
                    ),
                  ),
                ),

              ]
          ),
        ),
      ]
    );
  }
}
