import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF5F2),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Image.asset('assets/arrow_back.png')),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Chinguun',
            style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/back2.png '), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                        onPressed: () {},
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
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}