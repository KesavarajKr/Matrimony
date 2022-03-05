// To parse this JSON data, do
//
//     final otpcheck = otpcheckFromJson(jsonString);

import 'dart:convert';

Otpcheck otpcheckFromJson(String str) => Otpcheck.fromJson(json.decode(str));

String otpcheckToJson(Otpcheck data) => json.encode(data.toJson());

class Otpcheck {
    Otpcheck({
        this.otp,
        this.mobileNo,
        this.createdFor,
        this.name,
        this.gender,
        this.montherTongue,
        this.religion,
        this.emailId,
        this.password,
        this.caste,
        this.subCaste,
        this.dob,
        this.age,
        this.mobilenoCode,
        this.lookingFor,
    });

    String? otp;
    String? mobileNo;
    String? createdFor;
    String? name;
    String? gender;
    String? montherTongue;
    String? religion;
    String? emailId;
    String? password;
    String? caste;
    String? subCaste;
    String? dob;
    String? age;
    String? mobilenoCode;
    String? lookingFor;

    factory Otpcheck.fromJson(Map<String, dynamic> json) => Otpcheck(
        otp: json["otp"],
        mobileNo: json["mobile_no"],
        createdFor: json["created_for"],
        name: json["Name"],
        gender: json["Gender"],
        montherTongue: json["Monther_tongue"],
        religion: json["Religion"],
        emailId: json["email_id"],
        password: json["password"],
        caste: json["Caste"],
        subCaste: json["sub_caste"],
        dob: json["dob"],
        age: json["age"],
        mobilenoCode: json["mobileno_code"],
        lookingFor: json["looking_for"],
    );

    Map<String, dynamic> toJson() => {
        "otp": otp,
        "mobile_no": mobileNo,
        "created_for": createdFor,
        "Name": name,
        "Gender": gender,
        "Monther_tongue": montherTongue,
        "Religion": religion,
        "email_id": emailId,
        "password": password,
        "Caste": caste,
        "sub_caste": subCaste,
        "dob": dob,
        "age": age,
        "mobileno_code": mobilenoCode,
        "looking_for": lookingFor,
    };
}
