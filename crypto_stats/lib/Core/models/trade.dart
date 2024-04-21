import 'package:crypto_stats/generated/assets.gen.dart';


class Trade {
  
  String title1;
  
  String title2;
  
  String symbolId;
  
  String price;
  
  String takerSide;
  
  AssetGenImage? icon;


  Trade(this.title1, this.title2, this.symbolId, this.price, this.takerSide,
      [this.icon]);

  Trade.fromJson(Map<String, dynamic> json)
      : title1 = json['symbol_id'].toString().split('_')[2],
        title2 = '/${json['symbol_id'].toString().split('_')[3]}',
        symbolId = json['symbol_id'] as String,
        price = json['price'] == null ? '' : json['price'].toString(),
        takerSide = json['taker_side'] as String;
}


final List<Trade> tradeList = [
  Trade('BTC', '/USD', 'COINBASE_SPOT_BTC_USD', '', '', Assets.images.btc),
  Trade('ETH', '/USD', 'COINBASE_SPOT_ETH_USD', '', '', Assets.images.eth),
  Trade('ADA', '/USD', 'COINBASE_SPOT_ADA_USD', '', '', Assets.images.ada)
];
