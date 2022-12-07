// To parse this JSON data, do
//
//     final loginDetail = loginDetailFromJson(jsonString);

import 'dart:convert';

LoginDetail loginDetailFromJson(String str) => LoginDetail.fromJson(json.decode(str));

String loginDetailToJson(LoginDetail data) => json.encode(data.toJson());

class LoginDetail {
    LoginDetail({
        this.input,
        this.password,
        this.companyCode,
    });

    String? input;
    String? password;
    String? companyCode;

    factory LoginDetail.fromJson(Map<String, dynamic> json) => LoginDetail(
        input: json["input"],
        password: json["password"],
        companyCode: json["company_code"],
    );

    Map<String, dynamic> toJson() => {
        "input": input,
        "password": password,
        "company_code": companyCode,
    };
}
