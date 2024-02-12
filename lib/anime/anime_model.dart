import 'package:json_annotation/json_annotation.dart';

part 'anime_model.g.dart';

@JsonSerializable()
class AnimeModel {
  Data? data;

  AnimeModel({this.data});

  factory AnimeModel.fromJson(Map<String, dynamic> json) => _$AnimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}

@JsonSerializable()
class Data {
  Page? page;

  Data({this.page});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Page {
  List<Media>? media;

  Page({this.media});

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class Media {
  String? siteUrl;
  Title? title;
  String? description;
  
  int? id;
  @JsonKey(name: 'idMal') int? idMAL;
  String? type;
  String? format;
  String? status;
  String? season;
  int? seasonYear;
  int? episodes;
  int? duration;
  int? chapters;
  int? volumes;
  String? countryOfOrigin;
  bool? isLicensed;
  String? source;
  String? hashtag;
  Trailer? trailer;
  int? updatedAt;
  CoverImage? coverImage;
  String? bannerImage;
  List<String>? genres;
  List<String>? synonyms;
  int? averageScore;
  int? meanScore;
  int? popularity;
  bool? isLocked;
  

  Media({
    this.siteUrl,
    this.title,
    this.description,
   
    this.id,
    this.idMAL,
    this.type,
    this.format,
    this.status,
    this.season,
    this.seasonYear,
    this.episodes,
    this.duration,
    this.chapters,
    this.volumes,
    this.countryOfOrigin,
    this.isLicensed,
    this.source,
    this.hashtag,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.bannerImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.meanScore,
    this.popularity,
    this.isLocked,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
  Map<String, dynamic> toJson() => _$MediaToJson(this);
}

@JsonSerializable()
class Title {
  String? english;
  @JsonKey(name: 'native') String? nativeLang;

  Title({this.english, this.nativeLang});

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  get native => null;
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class Trailer {
  String? thumbnail;
  String? site;
  String? id;

  Trailer({this.thumbnail, this.site, this.id});

  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}

@JsonSerializable()
class CoverImage {
  String? large;

  CoverImage({this.large});

  factory CoverImage.fromJson(Map<String, dynamic> json) => _$CoverImageFromJson(json);
  Map<String, dynamic> toJson() => _$CoverImageToJson(this);
}


