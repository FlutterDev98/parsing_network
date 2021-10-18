// ignore_for_file: unnecessary_this

class EmployeeUpdate {
  String status;
  String message;
  EmployeeUpdate.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        message = json['message'];
  Map<String, dynamic> toJson() {
    return {
      'status': this.status,
      'message': this.message,
    };
  }
}
