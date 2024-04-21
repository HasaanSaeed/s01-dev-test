part of 'crypto_assets_cubit.dart';

@immutable

abstract class CryptoAssetsState {}

class CryptoInitial extends CryptoAssetsState {}

class CryptoLoaded extends CryptoAssetsState {

  final List<CryptoAsset> cryptoAssets;

  CryptoLoaded({required this.cryptoAssets});
}
