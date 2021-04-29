import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statae_management/model/SelectedStuedntModel.dart';

class SelectedStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Student Detail'),
        ),
        body: Consumer<SelectedStudentModel>(
            builder: (context, object, widget) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: object.selectedStudent.length,
                  itemBuilder: (context, index) => ListTile(
                    leading:
                        Text('${object.selectedStudent[index].rollNumber}'),
                    title: Text('${object.selectedStudent[index].name}'),
                    subtitle: Text(
                        '${object.selectedStudent[index].dept},${object.selectedStudent[index].university}'),
                  ),
                )));
  }
}
