class Tarot {
  int id;
  String name;
  String image;
  String prof1;
  String prof2;
  String wordJ;
  String wordR;
  String msgJ;
  String msgR;
  String msg2J;
  String msg2R;
  String msg3J;
  String msg3R;
  String drawNum;
  List<DateTime> drawNumJ;
  List<DateTime> drawNumR;
  int feelJ;
  int feelR;

  Tarot({
    required this.id,
    required this.name,
    required this.image,
    required this.prof1,
    required this.prof2,
    required this.wordJ,
    required this.wordR,
    required this.msgJ,
    required this.msgR,
    required this.msg2J,
    required this.msg2R,
    required this.msg3J,
    required this.msg3R,
    required this.drawNum,
    required this.drawNumJ,
    required this.drawNumR,
    required this.feelJ,
    required this.feelR,
  });

  factory Tarot.fromJson(Map<String, dynamic> json) => Tarot(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        prof1: json["prof1"],
        prof2: json["prof2"],
        wordJ: json["word_j"],
        wordR: json["word_r"],
        msgJ: json["msg_j"],
        msgR: json["msg_r"],
        msg2J: json["msg2_j"],
        msg2R: json["msg2_r"],
        msg3J: json["msg3_j"],
        msg3R: json["msg3_r"],
        drawNum: json["drawNum"],
        drawNumJ: List<DateTime>.from(
            json["drawNum_j"].map((x) => DateTime.parse(x))),
        drawNumR: List<DateTime>.from(
            json["drawNum_r"].map((x) => DateTime.parse(x))),
        feelJ: json["feel_j"] ?? 0,
        feelR: json["feel_r"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "prof1": prof1,
        "prof2": prof2,
        "word_j": wordJ,
        "word_r": wordR,
        "msg_j": msgJ,
        "msg_r": msgR,
        "msg2_j": msg2J,
        "msg2_r": msg2R,
        "msg3_j": msg3J,
        "msg3_r": msg3R,
        "drawNum": drawNum,
        "drawNum_j": List<dynamic>.from(drawNumJ.map((x) =>
            "${x.year.toString().padLeft(4, '0')}-${x.month.toString().padLeft(2, '0')}-${x.day.toString().padLeft(2, '0')}")),
        "drawNum_r": List<dynamic>.from(drawNumR.map((x) =>
            "${x.year.toString().padLeft(4, '0')}-${x.month.toString().padLeft(2, '0')}-${x.day.toString().padLeft(2, '0')}")),
        "feel_j": feelJ,
        "feel_r": feelR,
      };
}
