import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  AddTaskScreen({this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String newTextTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task', textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),),
              SizedBox(height: 10.0,),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                  newTextTitle = newText;
                },
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  onPressed: (){
                      addTaskCallBack(newTextTitle);
                      },
                  color: Colors.lightBlueAccent,
                  child:
                  Text('Add', style: TextStyle(color: Colors.white),)
              )
            ],
          )
      ),
    );
  }
}
