/// user : {"name":"ahmad222","email":"ahmadd333@gmail.com","updated_at":"2022-04-22T08:53:41.000000Z","created_at":"2022-04-22T08:53:41.000000Z","id":36}
/// token : "4|87xOJcb7D4rCFSLykb5qAkKFzUs5yg8FJeLUInUC"
/// status : {"message":"succes","status_code":"200"}

class UserModel {
  UserModel({
      User? user, 
      String? token,
    ApiStatus? status,}){
    _user = user;
    _token = token;
    _status = status;
}

  UserModel.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
    _status = json['status'] != null ? ApiStatus.fromJson(json['status']) : null;
  }
  User? _user;
  String? _token;
  ApiStatus? _status;

  User? get user => _user;
  String? get token => _token;
  ApiStatus? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    return map;
  }

}

/// message : "succes"
/// status_code : "200"

class ApiStatus {
  ApiStatus({
      String? message}){
    _message = message;
}

  ApiStatus.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;

  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}

/// name : "ahmad222"
/// email : "ahmadd333@gmail.com"
/// updated_at : "2022-04-22T08:53:41.000000Z"
/// created_at : "2022-04-22T08:53:41.000000Z"
/// id : 36

class User {
  User({
      String? name, 
      String? email, 
      String? emailVerify,
      int? authenticateState,
      String? updatedAt,
      String? createdAt, 
      int? id,}){
    _name = name;
    _email = email;
    _emailVerify = emailVerify;
    _authenticateState = authenticateState;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  User.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _emailVerify = json['email_verified_at'];
    _authenticateState = json['authenticate_state'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  String? _email;
  String? _emailVerify;
  int? _authenticateState;
  String? _updatedAt;
  String? _createdAt;
  int? _id;

  String? get name => _name;
  String? get email => _email;
  String? get emailVerify => _emailVerify;
  int? get authenticateState => _authenticateState;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerify;
    map['authenticate_state'] = _authenticateState;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}