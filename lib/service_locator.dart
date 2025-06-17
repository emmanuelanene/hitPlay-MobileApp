import 'package:get_it/get_it.dart';
import 'package:hitplay/data/repository/auth/auth_repository_impl.dart';
import 'package:hitplay/data/repository/song/song_repository_impl.dart';
import 'package:hitplay/data/sources/auth/auth_firebase_service.dart';
import 'package:hitplay/data/sources/song/song_firebase_service.dart';
import 'package:hitplay/domain/repository/auth/auth.dart';
import 'package:hitplay/domain/repository/song/song.dart';
import 'package:hitplay/domain/usecases/auth/get_user.dart';
import 'package:hitplay/domain/usecases/auth/sigin.dart';
import 'package:hitplay/domain/usecases/song/add_or_remove_favorite_song.dart';
import 'package:hitplay/domain/usecases/song/get_favorite_songs.dart';
import 'package:hitplay/domain/usecases/song/get_news_songs.dart';
import 'package:hitplay/domain/usecases/song/get_play_list.dart';
import 'package:hitplay/domain/usecases/song/is_favorite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
 sl.registerSingleton<SongsRepository>(
     SongRepositoryImpl()
 );


 sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
  AddOrRemoveFavoriteSongUseCase()
 );


  sl.registerSingleton<AuthFirebaseService>(
  AuthFirebaseServiceImpl()
 );

 sl.registerSingleton<SongFirebaseService>(
  SongFirebaseServiceImpl()
 );


 sl.registerSingleton<AuthRepository>(
  AuthRepositoryImpl()
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

 
}