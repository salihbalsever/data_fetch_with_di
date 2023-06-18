import 'package:di_with_provider/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()

class Post extends BaseModel{
  int? userId;
  int? id;
  String? title;
  String? body;
  Post({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  Map<String, dynamic> toJson() => _$PostToJson(this);
  
  @override
  Post fromJson(Map<String, dynamic> json) {
    return _$PostFromJson(json);
  }

}