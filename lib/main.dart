import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:statae_management/model/SelectedStuedntModel.dart';
import 'package:statae_management/pages/ItemDetail.dart';
import 'pages/MyList.dart';
import 'model/studentmodel.dart';

void main() {
  runApp(ChangeNotifierProvider<SelectedStudentModel>(
      create: (contex) => SelectedStudentModel(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Students> student;

  @override
  void initState() {
    fetchData();

    super.initState();
  }

  void fetchData() async {
    String json = await rootBundle.loadString('assets/students.json');
    var decodedData = jsonDecode(json);
    var data = StudentsModel.fromJson(decodedData);
    student = data.students;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management Application',
        home: Builder(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    icon: Icon(Icons.school),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectedStudent()));
                    })
              ],
              title: Text("State Management"),
            ),
            body: MyList(
              student: student,
            ),
          ),
        ));
  }
}
