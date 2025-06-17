import 'package:dartz/dartz.dart';
import 'package:hitplay/core/usecase/usecase.dart';
import 'package:hitplay/data/models/auth/create_user_req.dart';
import 'package:hitplay/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {


  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepository>().signup(params!);
  }

}