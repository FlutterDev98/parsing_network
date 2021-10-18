// ignore_for_file: prefer_const_constructors, prefer_const_declarations, import_of_legacy_library_into_null_safe
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:parsing_network/model/emp_model.dart';
import 'package:parsing_network/model/empone_model.dart';
import 'package:parsing_network/services/http_service.dart';

class DetailPage extends StatefulWidget {
  static final String id = 'Detail_page';
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String name;
  int age, salary, id;

  void _apiEmpOne(int id) {
    Network.GET(Network.API_EMP_ONE + id.toString(), Network.paramsEmpty())
        .then((response) => {
              print(response),
              _showResponse(response),
            });
  }

  void _showResponse(String response) {
    EmpOne empOne = Network.parseEmpOne(response);
    print(empOne.data.employee_name);
    setState(() {
      id = empOne.data.id;
      name = empOne.data.employee_name;
      age = empOne.data.employee_age;
      salary = empOne.data.employee_salary;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiEmpOne(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  age.toString(),
                  style: TextStyle(color: Colors.red, fontSize: 25),
                ),
              ],
            ),
            Text(
              salary.toString() + "\$",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
