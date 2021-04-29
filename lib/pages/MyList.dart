import 'package:flutter/material.dart';
import 'package:statae_management/model/studentmodel.dart';

class MyList extends StatelessWidget {
  final List<Students> student;
  final List<Students> selectedStudent;

  const MyList({
    Key key,
    @required this.selectedStudent,
    @required this.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (student != null)
        ? ListView.builder(
            itemCount: student.length,
            itemBuilder: (context, index) => ListTile(
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      selectedStudent.add(student[index]);
                    },
                  ),
                  title: Text(student[index].name),
                  leading: Text('${student[index].rollNumber}'),
                  subtitle: Text(
                      '${student[index].dept},${student[index].university}'),
                ))
        : Center(child: CircularProgressIndicator());
  }
}
