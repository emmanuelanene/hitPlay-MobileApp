import 'package:dartz/dartz.dart';
import 'package:hitplay/core/usecase/usecase.dart';
import 'package:hitplay/data/models/auth/signin_user_req.dart';
import 'package:hitplay/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class SigninUseCase implements UseCase<Either,SigninUserReq> {


  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }

}
