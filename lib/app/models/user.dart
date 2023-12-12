import 'package:fall_2023_project/app/resources/strings.dart';

class UserModel {
  UserModel({
    required this.name,
    required this.imageName,
  });

  final String name;
  final String imageName;
}

final user = UserModel(
  name: Strings.userName,
  imageName: Strings.userPhotoName,
);
