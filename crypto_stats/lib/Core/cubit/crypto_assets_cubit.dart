import 'package:bloc/bloc.dart';
import 'package:crypto_stats/Core/models/crypto_asset.dart';
import 'package:crypto_stats/Core/services/repository.dart';
import 'package:meta/meta.dart';

part 'crypto_assets_state.dart';

class CryptoAssetsCubit extends Cubit<CryptoAssetsState> {
  final IRepository _repository;

  CryptoAssetsCubit(this._repository) : super(CryptoInitial());

  void getCryptoAssets() {
    _repository.getCryptoAssets().then((cryptoAssets) {
      emit(CryptoLoaded(cryptoAssets: cryptoAssets));
    });
  }
}
