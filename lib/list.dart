
class ToDo{
  String? id;
  String? todoText;
  bool isDone;
  String phoneNumber;

  ToDo({
    required this.id,
    required this.todoText,
    required this.phoneNumber,
    this.isDone = false
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: "06", todoText: "Antony", phoneNumber: "09058439258"),
      ToDo(id: "05", todoText: "Antonia", phoneNumber: "07066854329"),
      ToDo(id: "04", todoText: "Annabel",phoneNumber: "08054375442" ),
      ToDo(id: "03", todoText: "Angel", phoneNumber: "08146496540"),
      ToDo(id: "02", todoText: "Angela", phoneNumber: "07054686542"),
      ToDo(id: "01", todoText: "Abigail", phoneNumber: "08045327654"),






    ];
  }

}
