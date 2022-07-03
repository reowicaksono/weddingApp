// To parse this JSON data, do
//
//     final tamuModel = tamuModelFromJson(jsonString);

import 'dart:convert';

TamuModel tamuModelFromJson(String str) => TamuModel.fromJson(json.decode(str));

String tamuModelToJson(TamuModel data) => json.encode(data.toJson());

class TamuModel {
    TamuModel({
        this.tamuId,
        this.nama,
        this.email,
        this.status,
        this.foto,
    });

    String? tamuId;
    String? nama;
    String? email;
    String? status;
    String? foto;

    factory TamuModel.fromJson(Map<String, dynamic> json) => TamuModel(
        tamuId: json["tamu_id"],
        nama: json["nama"],
        email: json["email"],
        status: json["status"],
        foto: json["foto"],
    );

    Map<String, dynamic> toJson() => {
        "tamu_id": tamuId,
        "nama": nama,
        "email": email,
        "status": status,
        "foto": foto,
    };
}
