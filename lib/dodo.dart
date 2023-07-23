
class DoDo{
  String? dd;
  String? dodoText;
  String phoneNumber;
  bool isBone;

  DoDo({
    required this.dd,
    required this.dodoText,
    required this.phoneNumber,
    this.isBone = false
  });
  static List<DoDo> dodoList() {
    return [
      DoDo(dd: "01", dodoText: "Abigail",phoneNumber: "08045327654" ),
      DoDo(dd: "02", dodoText: "Angela", phoneNumber: "07054686542"),
      DoDo(dd: "03", dodoText: "Angel",phoneNumber: "08146496540" ),
      DoDo(dd: "04", dodoText: "Annabel",phoneNumber: "08054375442", ),
      DoDo(dd: "05", dodoText: "Antonia", phoneNumber: "07066854329"),
      DoDo(dd: "06", dodoText: "Antony", phoneNumber: "09058439258"),


    ];
  }

}
