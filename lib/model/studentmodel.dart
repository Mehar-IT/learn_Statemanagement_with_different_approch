class StudentsModel {
  List<Students> students;

  StudentsModel({this.students});

  StudentsModel.fromJson(Map<String, dynamic> json) {
    if (json['Students'] != null) {
      students = <Students>[];
      json['Students'].forEach((v) {
        students.add(new Students.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.students != null) {
      data['Students'] = this.students.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Students {
  int rollNumber;
  String name;
  String university;
  String dept;

  Students({this.rollNumber, this.name, this.university, this.dept});

  Students.fromJson(Map<String, dynamic> json) {
    rollNumber = json['roll_number'];
    name = json['name'];
    university = json['University'];
    dept = json['Dept'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roll_number'] = this.rollNumber;
    data['name'] = this.name;
    data['University'] = this.university;
    data['Dept'] = this.dept;
    return data;
  }
}
