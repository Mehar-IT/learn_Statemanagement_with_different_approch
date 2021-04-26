import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statae_management/model/studentmodel.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<Students> student;
  @override
  void initState() {
    fetchData();

    super.initState();
  }

  void fetchData() async {
    String json = await rootBundle.loadString('assets/students.json');
    var decodedData = jsonDecode(json);
    var data = Student.fromJson(decodedData);
    student = data.students;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return (student != null)
        ? ListView.builder(
            itemCount: student.length,
            itemBuilder: (context, index) => ListTile(
                  trailing: IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  title: Text(student[index].name),
                  leading: Text('${student[index].rollNumber}'),
                  subtitle: Text(
                      '${student[index].dept},${student[index].university}'),
                ))
        : Center(child: CircularProgressIndicator());
  }
}
