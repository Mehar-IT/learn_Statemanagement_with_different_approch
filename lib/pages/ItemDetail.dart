import 'package:flutter/material.dart';
import 'package:statae_management/model/studentmodel.dart';

class SelectedStudent extends StatelessWidget {
  final List<Students> selectedStudent;
  const SelectedStudent({
    Key key,
    this.selectedStudent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Student Detail'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: selectedStudent.length,
          itemBuilder: (context, index) => ListTile(
            leading: Text('${selectedStudent[index].rollNumber}'),
            title: Text('${selectedStudent[index].name}'),
            subtitle: Text(
                '${selectedStudent[index].dept},${selectedStudent[index].university}'),
          ),
        ));
  }
}
