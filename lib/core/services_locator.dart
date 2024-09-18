//inti get it
import 'package:get_it/get_it.dart';
import 'package:onboarding_app/core/cache_helper.dart';
final sl = GetIt.instance;
void setup() {
  sl.registerLazySingleton<CacheHelper>(()=>CacheHelper());
}
