class BaseModel {
  String collection;

  BaseModel({
    required this.collection,
  });

  Map<String, dynamic> toMap() {
    throw "not implemented";
  }
}
