import 'dart:convert';

List<ResortData> resortDataFromJson(String str) => List<ResortData>.from(json.decode(str).map((x) => ResortData.fromJson(x)));

String resortDataToJson(List<ResortData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResortData {
    ResortData({
        this.id,
        this.name,
        this.homeImg,
        this.beachImg,
        this.ocaenImg,
        this.roomImg,
        this.distance,
        this.aboutResort,
        this.roomPrice,
        this.room,
        this.v,
    });

    String? id;
    String? name;
    String? homeImg;
    String? beachImg;
    String? ocaenImg;
    String? roomImg;
    String? distance;
    String? aboutResort;
    String? roomPrice;
    String? room;
    int? v;

    factory ResortData.fromJson(Map<String, dynamic> json) => ResortData(
        id: json["_id"],
        name: json["name"],
        homeImg: json["homeImg"],
        beachImg: json["beachImg"],
        ocaenImg: json["ocaenImg"],
        roomImg: json["roomImg"],
        distance: json["distance"],
        aboutResort: json["aboutResort"],
        roomPrice: json["roomPrice"],
        room: json["room"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "homeImg": homeImg,
        "beachImg": beachImg,
        "ocaenImg": ocaenImg,
        "roomImg": roomImg,
        "distance": distance,
        "aboutResort": aboutResort,
        "roomPrice": roomPrice,
        "room": room,
        "__v": v,
    };
}
