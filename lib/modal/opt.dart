// To parse this JSON data, do
//
//     final otp = otpFromJson(jsonString);

import 'dart:convert';

Otp otpFromJson(String str) => Otp.fromJson(json.decode(str));

String otpToJson(Otp data) => json.encode(data.toJson());

class Otp {
    Otp({
        this.otp,
        this.mobileNo,
    });

    String? otp;
    String? mobileNo;

    factory Otp.fromJson(Map<String, dynamic> json) => Otp(
        otp: json["otp"],
        mobileNo: json["mobile_no"],
    );

    Map<String, dynamic> toJson() => {
        "otp": otp,
        "mobile_no": mobileNo,
    };
}
