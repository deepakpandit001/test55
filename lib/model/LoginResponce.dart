// To parse this JSON data, do
//
//     final loginResponce = loginResponceFromJson(jsonString);

import 'dart:convert';

LoginResponce loginResponceFromJson(String str) => LoginResponce.fromJson(json.decode(str));

String loginResponceToJson(LoginResponce data) => json.encode(data.toJson());

class LoginResponce {
    LoginResponce({
        this.status,
        this.result,
        this.error,
        this.version,
    });

    bool? status;
    Result? result;
    dynamic error;
    String? version;

    factory LoginResponce.fromJson(Map<String, dynamic> json) => LoginResponce(
        status: json["status"],
        result: Result.fromJson(json["result"]),
        error: json["error"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "result": result?.toJson(),
        "error": error,
        "version": version,
    };
}

class Result {
    Result({
        this.id,
        this.name,
        this.employeeId,
        this.emailId,
        this.mobile,
        this.isMtcSuperAdmin,
        this.isOrg,
        this.orgId,
        this.rid,
        this.lid,
        this.iob,
        this.isu,
        this.permission,
        this.token,
        this.sc,
    });

    int? id;
    String? name;
    String? employeeId;
    String? emailId;
    String? mobile;
    bool? isMtcSuperAdmin;
    bool? isOrg;
    String? orgId;
    int? rid;
    int? lid;
    bool? iob;
    bool? isu;
    List<int>? permission;
    String? token;
    String? sc;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        employeeId: json["EmployeeId"],
        emailId: json["email_id"],
        mobile: json["mobile"],
        isMtcSuperAdmin: json["isMtcSuperAdmin"],
        isOrg: json["isOrg"],
        orgId: json["org_id"],
        rid: json["rid"],
        lid: json["lid"],
        iob: json["iob"],
        isu: json["isu"],
        permission: List<int>.from(json["permission"].map((x) => x)),
        token: json["token"],
        sc: json["sc"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "EmployeeId": employeeId,
        "email_id": emailId,
        "mobile": mobile,
        "isMtcSuperAdmin": isMtcSuperAdmin,
        "isOrg": isOrg,
        "org_id": orgId,
        "rid": rid,
        "lid": lid,
        "iob": iob,
        "isu": isu,
        "permission": List<dynamic>.from(permission!.map((x) => x)),
        "token": token,
        "sc": sc,
    };
}
