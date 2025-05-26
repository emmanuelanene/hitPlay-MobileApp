import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/signin_user_req.dart';

abstract class AuthRepository {
  /*
    This method takes a CreateUserReq object (which likely holds user information for signup) and returns a Future<Either>.

    Future indicates that this is an asynchronous operation, and it will return a result later.

    Either is a type from the dartz library that can hold either a left or right value, typically used for handling errors or successful results.

    For example, Future<Either<Failure, User>> could mean a future result that might either:
        Failure (left side) if something went wrong,
        User (right side) if the operation succeeded.

    Future<Either<Failure, User>> signup(CreateUserReq createUserReq);
    Future<Either<Failure, User>> signin(SigninUserReq signinUserReq);
    Future<Either<Failure, User>> getUser();
   */
  Future<Either> signup(CreateUserReq createUserReq);

  Future<Either> signin(SigninUserReq signinUserReq);

  Future<Either> getUser();
}