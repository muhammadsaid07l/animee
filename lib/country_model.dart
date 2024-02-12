// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class App {
  @JsonKey(name: "data")
  Data? data;

  App({
    this.data,
  });

  factory App.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "country")
  CountryClass? country;

  Data({
    this.country,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class CountryClass {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "native")
  String? native;
  @JsonKey(name: "capital")
  String? capital;
  @JsonKey(name: "emoji")
  String? emoji;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "languages")
  List<Language>? languages;
  CountryClass({
    this.name,
    this.native,
    this.capital,
    this.emoji,
    this.currency,
    this.languages,
  });
  factory CountryClass.fromJson(Map<String, dynamic> json) =>
      _$CountryClassFromJson(json);

  Map<String, dynamic> toJson() => _$CountryClassToJson(this);

  @override
  String toString() {
    return 'Name: $name, native: $native, capital: $capital, emoji: $emoji, currency: $currency, languages: $languages,';
  }
}
@JsonSerializable()
class Language {
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "name")
  String? name;
  Language({
    this.code,
    this.name,
  });
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
  @override
  String toString() => 'Language(code: $code, name: $name)';
}
