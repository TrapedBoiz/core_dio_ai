import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserResponse {
  final int page;
  @JsonKey(name: 'per_page')
  final int perPage;
  final int total;
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<User> data;
  final Support support;

  UserResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => 
    _$UserResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class User {
  final int id;
  final String email;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserToJson(this);

  String get fullName => '$firstName $lastName';
}

@JsonSerializable()
class Support {
  final String url;
  final String text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => _$SupportFromJson(json);
  
  Map<String, dynamic> toJson() => _$SupportToJson(this);
}
