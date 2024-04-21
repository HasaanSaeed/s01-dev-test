import 'package:crypto_stats/Core/helpers/constants.dart';
import 'package:dio/dio.dart';


abstract class INetworkService {
  
  Future<List<dynamic>> getCryptoAssets();
}


class NetworkService implements INetworkService {

  final Dio _dioClient;

  NetworkService(this._dioClient);

  @override
  Future<List<dynamic>> getCryptoAssets() async {
    try {
     
      final result = await _dioClient.get<List<dynamic>>(
        baseUrl,
        options: Options(
          headers: <String, String>{'X-CoinAPI-Key': '{$apiKey}'},
        ),
      );

      return result.data!;
    } catch (e) {
      return <List<dynamic>>[];
    }
  }
}
