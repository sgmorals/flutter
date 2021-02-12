import "package:json_annotation/json_annotation.dart";

part "CategoryModel.g.dart";

@JsonSerializable()
class CategoryModel {
  String name;
  List<CategoryChildModel> children;
  CategoryModel(this.name, this.children);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  static List<CategoryModel> fromJsonList(dynamic json) {
    return (json as List)
        ?.map(
          (e) => e == null ? null : CategoryModel.fromJson(e),
        )
        ?.toList();
  }
}

@JsonSerializable()
class CategoryModels {
  List<CategoryModel> data;
  CategoryModels(this.data);

  factory CategoryModels.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelsToJson(this);
}

@JsonSerializable()
class CategoryChildModel {
  int id;
  String name;
  bool isSelected;
  CategoryChildModel({
    this.id,
    this.name,
    this.isSelected = false,
  });

  factory CategoryChildModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryChildModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryChildModelToJson(this);
}
