import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondRoute extends StatelessWidget {
  String sOrgId;
  String sNumber;
  String sPassword;

  SecondRoute(
      {super.key,
      required this.sOrgId,
      required this.sNumber,
      required this.sPassword});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("User Enter Details:" +
                sNumber +
                ":" +
                sOrgId +
                ":" +
                sPassword);

            getUserDetail(sOrgId, sNumber, sPassword);
            //Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }

  getUserDetail(String sOrg, String sNumb, String sPass) async {
    var responce = await http
        .post(Uri.parse("https://hrms-orgapi.rozgar.com/v1/auth/login"), body: {
      "input": "$sNumb",
      "password": "$sPass",
      "company_code": "$sOrg"
    });

    print(responce.body);
  }
}
