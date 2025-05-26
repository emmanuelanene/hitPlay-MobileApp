// ✅✅✅✅✅✅✅✅✅✅
import 'package:dartz/dartz.dart';
import 'package:hitplay/core/usecase/usecase.dart';
import 'package:hitplay/domain/repository/song/song.dart';
import 'package:hitplay/service_locator.dart';


class AddOrRemoveFavoriteSongUseCase implements UseCase<Either,String> {
  @override
  Future<Either> call({String ? params}) async {
    return await sl<SongsRepository>().addOrRemoveFavoriteSongs(params!);
  }
  
}