// ✅✅✅✅✅✅✅✅✅✅
class UserEntity {

  String ? fullName;
  String ? email;
  String ? imageURL;

  /*
  const UserEntity({
    String? fullName,
    String ? email,
    String ? imageURL
  }) : fullName = fullName,
      email = email,
      imageURL = imageURL;
   */
  UserEntity({
    this.fullName,
    this.email,
    this.imageURL
  });
}