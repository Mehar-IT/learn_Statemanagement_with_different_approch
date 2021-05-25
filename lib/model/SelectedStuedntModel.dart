import 'package:get/get.dart';
import 'package:statae_management/model/studentmodel.dart';

class SelectedStudentModel extends GetxController {
  RxList<Students> _selectedStudent = [].obs;

  RxList<Students> get selectedStudent => _selectedStudent;

  void add(var value) {
    _selectedStudent.add(value);
  }
}
