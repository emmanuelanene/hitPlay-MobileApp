import 'package:get_it/get_it.dart';
import 'package:hitplay/data/song_repository_impl.dart';
import 'package:hitplay/domain/repository/song/song.dart';
import 'package:hitplay/domain/usecases/add_or_remove_favorite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
 sl.registerSingleton<SongsRepository>(
     SongRepositoryImpl()
 );


 sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
  AddOrRemoveFavoriteSongUseCase()
 );

 /*
  sl.registerSingleton<AuthFirebaseService>(
  AuthFirebaseServiceImpl()
 );

 sl.registerSingleton<SongFirebaseService>(
  SongFirebaseServiceImpl()
 );


 sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
 );




 sl.registerSingleton<SignupUseCase>(
  SignupUseCase()
 );

 sl.registerSingleton<SigninUseCase>(
  SigninUseCase()
 );

 sl.registerSingleton<GetNewsSongsUseCase>(
  GetNewsSongsUseCase()
 );

 sl.registerSingleton<GetPlayListUseCase>(
  GetPlayListUseCase()
 );



 sl.registerSingleton<IsFavoriteSongUseCase>(
  IsFavoriteSongUseCase()
 );

 sl.registerSingleton<GetUserUseCase>(
  GetUserUseCase()
 );

 sl.registerSingleton<GetFavoriteSongsUseCase>(
  GetFavoriteSongsUseCase()
 );
 */

 
}