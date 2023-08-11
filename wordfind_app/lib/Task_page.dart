import 'package:flutter/material.dart';
import 'package:wordfind_app/Models/user_model.dart';
import 'package:wordfind_app/models/task_model.dart';
import 'package:wordfind_app/task_widget.dart';
import 'data/questions.dart';

class TaskPage extends StatefulWidget {
  const TaskPage(this.user, {super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
  final User user;
}

class _TaskPageState extends State<TaskPage> {
  late List<TaskModel>
  listQuestions;
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();

  late User user;

  @override
  initState() {
    super.initState();
    listQuestions = questions;
    user = widget.user;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/arrow_back.png')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          user.userName,
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png'), fit: BoxFit.cover),
          ),

          child: LayoutBuilder(

            builder: (BuildContext context, BoxConstraints constraints) {  return TaskWidget(constraints.biggest,
                listQuestions.map((question) => question.clone()).toList(),
                key: globalKey
            );},
            children:[
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [

                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              borderRadius: BorderRadius.circular(10)),
                          child: ElevatedButton(
                            onPressed: () {globalKey.currentState?.generatePuzzle( loop: listQuestions.map((question) => question.clone()).toList(),); },
                            child: Text(
                              'reload',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
