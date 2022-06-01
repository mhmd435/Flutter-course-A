
/// id : 1
/// name : "Bitcoin"
/// symbol : "BTC"
/// slug : "bitcoin"
/// cmcRank : 1
/// marketPairCount : 9226
/// circulatingSupply : 18981025.00000000
/// selfReportedCirculatingSupply : 0
/// totalSupply : 18981025.00000000
/// maxSupply : 2.1E+7
/// ath : 68789.625938922131334232
/// atl : 65.526000976562500000
/// high24h : 40081.679254257200000000
/// low24h : 38432.931633910060000000
/// isActive : 1
/// lastUpdated : "2022-03-12T09:23:00.000Z"
/// dateAdded : "2013-04-28T00:00:00.000Z"
/// quotes : [{"name":"USD","price":39144.775449462126000000000000,"volume24h":23301890066.89607239,"volume7d":174686950923.67400537,"volume30d":703067717071.67283326,"marketCap":743007961425.62685015915000000000000000000000,"selfReportedMarketCap":0E-24,"percentChange1h":0.31370907,"percentChange24h":0.04596212,"percentChange7d":0.28884588,"lastUpdated":"2022-03-12T09:23:00.000Z","percentChange30d":-11.66603041,"percentChange60d":-6.72707190,"percentChange90d":-20.21373828,"fullyDilluttedMarketCap":822040284438.70,"marketCapByTotalSupply":743007961425.62685015915000000000000000000000,"dominance":42.5432,"turnover":0.03136156,"ytdPriceChangePercentage":-17.9128}]
/// isAudited : false

class CryptoData {
  CryptoData({
    int? id,
    String? name,
    String? symbol,
    String? slug,
    int? cmcRank,
    int? marketPairCount,
    double? circulatingSupply,
    int? selfReportedCirculatingSupply,
    double? totalSupply,
    double? maxSupply,
    double? ath,
    double? atl,
    double? high24h,
    double? low24h,
    int? isActive,
    String? lastUpdated,
    String? dateAdded,
    List<Quotes>? quotes,
    bool? isAudited,}){
    _id = id;
    _name = name;
    _symbol = symbol;
    _slug = slug;
    _cmcRank = cmcRank;
    _marketPairCount = marketPairCount;
    _circulatingSupply = circulatingSupply;
    _selfReportedCirculatingSupply = selfReportedCirculatingSupply;
    _totalSupply = totalSupply;
    _maxSupply = maxSupply;
    _ath = ath;
    _atl = atl;
    _high24h = high24h;
    _low24h = low24h;
    _isActive = isActive;
    _lastUpdated = lastUpdated;
    _dateAdded = dateAdded;
    _quotes = quotes;
    _isAudited = isAudited;
  }

  CryptoData.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _symbol = json['symbol'];
    _slug = json['slug'];
    _cmcRank = json['cmcRank'];
    _marketPairCount = json['marketPairCount'];
    _circulatingSupply = json['circulatingSupply'].toDouble();
    // _selfReportedCirculatingSupply = json['selfReportedCirculatingSupply'];
    _totalSupply =  json['totalSupply'];


    if (json['maxSupply'] != null) {
      var finalvar;
      var maxStr = json['maxSupply'].toString();
      if (maxStr.contains('.')) {
        finalvar = double.parse(maxStr);
      }
      _maxSupply = finalvar;
    }




    _ath = json['ath'];
    _atl = json['atl'];
    _high24h = json['high24h'];
    _low24h = json['low24h'];
    _isActive = json['isActive'];
    _lastUpdated = json['lastUpdated'];
    _dateAdded = json['dateAdded'];
    if (json['quotes'] != null) {
      _quotes = [];
      json['quotes'].forEach((v) {
        _quotes?.add(Quotes.fromJson(v));
      });
    }
    _isAudited = json['isAudited'];
  }
  int? _id;
  String? _name;
  String? _symbol;
  String? _slug;
  int? _cmcRank;
  int? _marketPairCount;
  double? _circulatingSupply;
  int? _selfReportedCirculatingSupply;
  double? _totalSupply;
  double? _maxSupply;
  double? _ath;
  double? _atl;
  double? _high24h;
  double? _low24h;
  int? _isActive;
  String? _lastUpdated;
  String? _dateAdded;
  List<Quotes>? _quotes;
  bool? _isAudited;

  int? get id => _id;
  String? get name => _name;
  String? get symbol => _symbol;
  String? get slug => _slug;
  int? get cmcRank => _cmcRank;
  int? get marketPairCount => _marketPairCount;
  double? get circulatingSupply => _circulatingSupply;
  int? get selfReportedCirculatingSupply => _selfReportedCirculatingSupply;
  double? get totalSupply => _totalSupply;
  double? get maxSupply => _maxSupply;
  double? get ath => _ath;
  double? get atl => _atl;
  double? get high24h => _high24h;
  double? get low24h => _low24h;
  int? get isActive => _isActive;
  String? get lastUpdated => _lastUpdated;
  String? get dateAdded => _dateAdded;
  List<Quotes>? get quotes => _quotes;
  bool? get isAudited => _isAudited;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['symbol'] = _symbol;
    map['slug'] = _slug;
    map['cmcRank'] = _cmcRank;
    map['marketPairCount'] = _marketPairCount;
    map['circulatingSupply'] = _circulatingSupply;
    map['selfReportedCirculatingSupply'] = _selfReportedCirculatingSupply;
    map['totalSupply'] = _totalSupply;
    map['maxSupply'] = _maxSupply;
    map['ath'] = _ath;
    map['atl'] = _atl;
    map['high24h'] = _high24h;
    map['low24h'] = _low24h;
    map['isActive'] = _isActive;
    map['lastUpdated'] = _lastUpdated;
    map['dateAdded'] = _dateAdded;
    if (_quotes != null) {
      map['quotes'] = _quotes?.map((v) => v.toJson()).toList();
    }
    map['isAudited'] = _isAudited;
    return map;
  }

}

/// name : "USD"
/// price : 39144.775449462126000000000000
/// volume24h : 23301890066.89607239
/// volume7d : 174686950923.67400537
/// volume30d : 703067717071.67283326
/// marketCap : 743007961425.62685015915000000000000000000000
/// selfReportedMarketCap : 0E-24
/// percentChange1h : 0.31370907
/// percentChange24h : 0.04596212
/// percentChange7d : 0.28884588
/// lastUpdated : "2022-03-12T09:23:00.000Z"
/// percentChange30d : -11.66603041
/// percentChange60d : -6.72707190
/// percentChange90d : -20.21373828
/// fullyDilluttedMarketCap : 822040284438.70
/// marketCapByTotalSupply : 743007961425.62685015915000000000000000000000
/// dominance : 42.5432
/// turnover : 0.03136156
/// ytdPriceChangePercentage : -17.9128

class Quotes {
  Quotes({
    String? name,
    double? price,
    double? volume24h,
    double? volume7d,
    double? volume30d,
    double? marketCap,
    double? selfReportedMarketCap,
    double? percentChange1h,
    double? percentChange24h,
    double? percentChange7d,
    String? lastUpdated,
    double? percentChange30d,
    double? percentChange60d,
    double? percentChange90d,
    double? fullyDilluttedMarketCap,
    double? marketCapByTotalSupply,
    double? dominance,
    double? turnover,
    double? ytdPriceChangePercentage,}){
    _name = name;
    _price = price;
    _volume24h = volume24h;
    _volume7d = volume7d;
    _volume30d = volume30d;
    _marketCap = marketCap;
    _selfReportedMarketCap = selfReportedMarketCap;
    _percentChange1h = percentChange1h;
    _percentChange24h = percentChange24h;
    _percentChange7d = percentChange7d;
    _lastUpdated = lastUpdated;
    _percentChange30d = percentChange30d;
    _percentChange60d = percentChange60d;
    _percentChange90d = percentChange90d;
    _fullyDilluttedMarketCap = fullyDilluttedMarketCap;
    _marketCapByTotalSupply = marketCapByTotalSupply;
    _dominance = dominance;
    _turnover = turnover;
    _ytdPriceChangePercentage = ytdPriceChangePercentage;
  }

  Quotes.fromJson(dynamic json) {
    _name = json['name'];
    _price = json['price'];
    _volume24h = json['volume24h'];
    _volume7d = json['volume7d'];
    _volume30d = json['volume30d'];
    _marketCap = json['marketCap'].toDouble();
    _selfReportedMarketCap = json['selfReportedMarketCap'].toDouble();
    _percentChange1h = json['percentChange1h'];
    _percentChange24h = json['percentChange24h'];
    _percentChange7d = json['percentChange7d'];
    _lastUpdated = json['lastUpdated'];
    _percentChange30d = json['percentChange30d'];
    _percentChange60d = json['percentChange60d'];
    _percentChange90d = json['percentChange90d'];
    _fullyDilluttedMarketCap = json['fullyDilluttedMarketCap'];
    _marketCapByTotalSupply = json['marketCapByTotalSupply'];
    _dominance = json['dominance'].toDouble();
    _turnover = json['turnover'];
    _ytdPriceChangePercentage = json['ytdPriceChangePercentage'];
  }
  String? _name;
  double? _price;
  double? _volume24h;
  double? _volume7d;
  double? _volume30d;
  double? _marketCap;
  double? _selfReportedMarketCap;
  double? _percentChange1h;
  double? _percentChange24h;
  double? _percentChange7d;
  String? _lastUpdated;
  double? _percentChange30d;
  double? _percentChange60d;
  double? _percentChange90d;
  double? _fullyDilluttedMarketCap;
  double? _marketCapByTotalSupply;
  double? _dominance;
  double? _turnover;
  double? _ytdPriceChangePercentage;

  String? get name => _name;
  double? get price => _price;
  double? get volume24h => _volume24h;
  double? get volume7d => _volume7d;
  double? get volume30d => _volume30d;
  double? get marketCap => _marketCap;
  double? get selfReportedMarketCap => _selfReportedMarketCap;
  double? get percentChange1h => _percentChange1h;
  double? get percentChange24h => _percentChange24h;
  double? get percentChange7d => _percentChange7d;
  String? get lastUpdated => _lastUpdated;
  double? get percentChange30d => _percentChange30d;
  double? get percentChange60d => _percentChange60d;
  double? get percentChange90d => _percentChange90d;
  double? get fullyDilluttedMarketCap => _fullyDilluttedMarketCap;
  double? get marketCapByTotalSupply => _marketCapByTotalSupply;
  double? get dominance => _dominance;
  double? get turnover => _turnover;
  double? get ytdPriceChangePercentage => _ytdPriceChangePercentage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['price'] = _price;
    map['volume24h'] = _volume24h;
    map['volume7d'] = _volume7d;
    map['volume30d'] = _volume30d;
    map['marketCap'] = _marketCap;
    map['selfReportedMarketCap'] = _selfReportedMarketCap;
    map['percentChange1h'] = _percentChange1h;
    map['percentChange24h'] = _percentChange24h;
    map['percentChange7d'] = _percentChange7d;
    map['lastUpdated'] = _lastUpdated;
    map['percentChange30d'] = _percentChange30d;
    map['percentChange60d'] = _percentChange60d;
    map['percentChange90d'] = _percentChange90d;
    map['fullyDilluttedMarketCap'] = _fullyDilluttedMarketCap;
    map['marketCapByTotalSupply'] = _marketCapByTotalSupply;
    map['dominance'] = _dominance;
    map['turnover'] = _turnover;
    map['ytdPriceChangePercentage'] = _ytdPriceChangePercentage;
    return map;
  }

}
