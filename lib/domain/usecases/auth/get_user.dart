import 'package:dartz/dartz.dart';
import 'package:hitplay/core/usecase/usecase.dart';
import 'package:hitplay/domain/repository/auth/auth.dart';
import '../../../service_locator.dart';

class GetUserUseCase implements UseCase<Either,dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }
}