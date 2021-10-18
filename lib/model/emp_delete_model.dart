// ignore_for_file: unnecessary_this

class EmployeeDelete {
  String status;
  String data;
  String message;
  EmployeeDelete.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        data = json['data'],
        message = json['message'];
  Map<String, dynamic> toJson() {
    return {
      'status': this.status,
      'data': this.data,
      'message': this.message,
    };
  }
}
