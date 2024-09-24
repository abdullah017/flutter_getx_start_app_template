import 'package:flutter_getx_clean_architecture/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;

  const UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [id, name, username, email];

  // Inside UserModel class
  User toEntity() {
    return User(
      id: id,
      name: name,
      username: username,
      email: email,
    );
  }
}
