import 'package:json_annotation/json_annotation.dart';
part 'SelectCard.g.dart';

@JsonSerializable()
class SelectCard {
  String title;
  String backdropPath;
  String description;
  String place;
  SelectCard({this.title, this.backdropPath, this.description,this.place});

  factory SelectCard.fromJson(Map<String, dynamic> json) => _$SelectCardFromJson(json);

  Map<String, dynamic> toJson() => _$SelectCardToJson(this);

  @override
  String toString() {
    return 'SelectCard{title: $title, backdropPath: $backdropPath,description: $description,place : $place}';
  }

}

