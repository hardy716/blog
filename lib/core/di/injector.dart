import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

Future<void> inject() async {
  provideServices();
  provideDataSources();
  provideRepositories();
  provideUseCases();
}

// @Service
void provideServices() {}

// @DataSource
void provideDataSources() {}

// @Repository
void provideRepositories() {}

// @UseCase
void provideUseCases() {}
