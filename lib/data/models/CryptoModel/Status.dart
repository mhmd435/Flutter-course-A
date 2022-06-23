
/// timestamp : "2022-03-12T09:24:55.291Z"
/// error_code : "0"
/// error_message : "SUCCESS"
/// elapsed : "31"
/// credit_count : 0

class Status {
  Status({
    String? timestamp,
    String? errorCode,
    String? errorMessage,
    String? elapsed,
    int? creditCount,}){
    _timestamp = timestamp;
    _errorCode = errorCode;
    _errorMessage = errorMessage;
    _elapsed = elapsed;
    _creditCount = creditCount;
  }

  Status.fromJson(dynamic json) {
    _timestamp = json['timestamp'];
    _errorCode = json['error_code'];
    _errorMessage = json['error_message'];
    _elapsed = json['elapsed'];
    _creditCount = json['credit_count'];
  }
  String? _timestamp;
  String? _errorCode;
  String? _errorMessage;
  String? _elapsed;
  int? _creditCount;

  String? get timestamp => _timestamp;
  String? get errorCode => _errorCode;
  String? get errorMessage => _errorMessage;
  String? get elapsed => _elapsed;
  int? get creditCount => _creditCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['timestamp'] = _timestamp;
    map['error_code'] = _errorCode;
    map['error_message'] = _errorMessage;
    map['elapsed'] = _elapsed;
    map['credit_count'] = _creditCount;
    return map;
  }

}