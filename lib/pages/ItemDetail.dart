import 'package:flutter/material.dart';

import 'package:statae_management/model/studentmodel.dart';

class ItemDetail extends StatelessWidget {
  final Students selectedStudent;
  const ItemDetail({
    Key key,
    this.selectedStudent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Detail'),
      ),
      body: ListTile(
        leading: Text('${selectedStudent.rollNumber}'),
        title: Text('${selectedStudent.name}'),
        subtitle: Text('${selectedStudent.dept},${selectedStudent.university}'),
      ),
    );
  }
}
