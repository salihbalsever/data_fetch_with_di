abstract class BaseModel {
  BaseModel();

    Map<String, dynamic> toJson();

     BaseModel fromJson(Map<String, dynamic> json);


}