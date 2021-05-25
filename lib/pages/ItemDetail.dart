import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statae_management/model/SelectedStuedntModel.dart';

class SelectedStudent extends StatelessWidget {
  final SelectedStudentModel obj = Get.put(SelectedStudentModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Student Detail'),
        ),
        body: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: obj.selectedStudent.length,
            itemBuilder: (context, index) => ListTile(
              leading: Text('${obj.selectedStudent[index].rollNumber}'),
              title: Text('${obj.selectedStudent[index].name}'),
              subtitle: Text(
                  '${obj.selectedStudent[index].dept},${obj.selectedStudent[index].university}'),
            ),
          ),
        ));
  }
}
