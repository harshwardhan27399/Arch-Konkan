// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SelectCard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectCard _$SelectCardFromJson(Map<String, dynamic> json) {
  return SelectCard(
    title: json['title'] as String,
    backdropPath: json['backdropPath'] as String,
    description: json['description'] as String,
    place: json['place'] as String,
  );
}

Map<String, dynamic> _$SelectCardToJson(SelectCard instance) =>
    <String, dynamic>{
      'title': instance.title,
      'backdropPath': instance.backdropPath,
      'description': instance.description,
      'place': instance.place,
    };
