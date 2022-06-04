
import 'package:flutter/cupertino.dart';
import 'package:flutter_course_a/models/CryptoModel/AllCryptoModel.dart';
import 'package:flutter_course_a/network/ApiProvider.dart';
import 'package:flutter_course_a/network/ResponseModel.dart';

class CryptoDataProvider extends ChangeNotifier{
  ApiProvider apiProvider = ApiProvider();

  late AllCryptoModel dataFuture;
  late ResponseModel state;
  var response;


  getTopMarketCapData() async {

    state = ResponseModel.loading("is Loading...");

    try{
      response = await apiProvider.getTopMarketCapData();

      if(response.statusCode == 200){
        dataFuture = AllCryptoModel.fromJson(response.data);
        state = ResponseModel.completed(dataFuture);
      }else{
        state = ResponseModel.error("something wrong...");
      }

      notifyListeners();
    }catch(e){
      state = ResponseModel.error("please check your connection...");
      notifyListeners();
    }
  }
}