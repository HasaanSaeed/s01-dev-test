
class CryptoAsset {
  
  String assetId;
  
  String url;

  
  CryptoAsset(this.assetId, this.url);


  CryptoAsset.fromJson(Map<String, dynamic> json)
      : assetId = json['asset_id'] as String,
        url = json['url'] as String;
}
