// ignore_for_file: unnecessary_this

import 'package:parsing_network/model/emp_model.dart';

class EmployeeCreate {
  String status;
  String message;
  Employee data;
  EmployeeCreate.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        message = json['message'],
        data = Employee.fromJson(json['data']);
  Map<String, dynamic> toJson() {
    return {
      'status': this.status,
      'message': this.message,
      'data': this.data.toJson(),
    };
  }
}
