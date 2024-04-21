import 'package:crypto_stats/Core/models/crypto_asset.dart';
import 'package:crypto_stats/Core/services/network_service.dart';

abstract class IRepository {
  Future<List<CryptoAsset>> getCryptoAssets();
}

class Repository implements IRepository {
  final INetworkService _networkService;

  Repository(this._networkService);

  @override
  Future<List<CryptoAsset>> getCryptoAssets() async {
    final result = await _networkService.getCryptoAssets();
    return result
        .map((dynamic e) => CryptoAsset.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
