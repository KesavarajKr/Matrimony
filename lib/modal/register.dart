// To parse this JSON data, do
//
//     final albumData = albumDataFromJson(jsonString);

import 'dart:convert';

AlbumData albumDataFromJson(String str) => AlbumData.fromJson(json.decode(str));

String albumDataToJson(AlbumData data) => json.encode(data.toJson());

class AlbumData {
    AlbumData({
        this.createdFor,
        this.lookingFor,
        this.name,
        this.gender,
        this.montherTongue,
        this.religion,
        this.mobileNo,
        this.emailId,
        this.password,
        this.caste,
        this.subCaste,
        this.dob,
        this.age,
        this.mobilenoCode,
    });

    String? createdFor;
    String? lookingFor;
    String? name;
    String? gender;
    String? montherTongue;
    String? religion;
    String? mobileNo;
    String? emailId;
    String? password;
    String? caste;
    String? subCaste;
    String? dob;
    String? age;
    String? mobilenoCode;

    factory AlbumData.fromJson(Map<String, dynamic> json) => AlbumData(
        createdFor: json["created_for"],
        lookingFor: json["looking_for"],
        name: json["Name"],
        gender: json["Gender"],
        montherTongue: json["Monther_tongue"],
        religion: json["Religion"],
        mobileNo: json["mobile_no"],
        emailId: json["email_id"],
        password: json["password"],
        caste: json["Caste"],
        subCaste: json["sub_caste"],
        dob: json["dob"],
        age: json["age"],
        mobilenoCode: json["mobileno_code"],
    );

    Map<String, dynamic> toJson() => {
        "created_for": createdFor,
        "looking_for": lookingFor,
        "Name": name,
        "Gender": gender,
        "Monther_tongue": montherTongue,
        "Religion": religion,
        "mobile_no": mobileNo,
        "email_id": emailId,
        "password": password,
        "Caste": caste,
        "sub_caste": subCaste,
        "dob": dob,
        "age": age,
        "mobileno_code": mobilenoCode,
    };
}
