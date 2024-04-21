// ignore_for_file: public_member_api_docs, duplicate_ignore

import 'package:crypto_stats/Core/services/network_service.dart';
import 'package:crypto_stats/Core/services/repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

void initializeDependency() {
  injector.registerSingleton<Dio>(Dio());

  // ignore: cascade_invocations
  injector
      .registerSingleton<INetworkService>(NetworkService(injector.get<Dio>()));
  // ignore: cascade_invocations
  injector.registerSingleton<IRepository>(
      Repository(injector.get<INetworkService>()));
}
