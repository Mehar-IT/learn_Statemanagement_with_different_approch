import 'package:flutter/material.dart';
import 'studentmodel.dart';

class SelectedStudentModel extends ChangeNotifier {
  List<Students> _selectedStudent = [];

  List<Students> get selectedStudent => _selectedStudent;

  void add(var value) {
    _selectedStudent.add(value);
    notifyListeners();
  }
}
