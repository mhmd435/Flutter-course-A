
import 'package:flutter/cupertino.dart';

import '../../data/data_source/ApiProvider.dart';
import '../../data/data_source/ResponseModel.dart';
import '../../data/models/CryptoModel/AllCryptoModel.dart';
import '../../data/repositories/CryproDataRepository.dart';

class CryptoDataProvider extends ChangeNotifier{
  ApiProvider apiProvider = ApiProvider();

  late AllCryptoModel dataFuture;
  late ResponseModel state;
  var response;

  CryptoDataRepository repository = CryptoDataRepository();


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

  getTopGainersData() async {

    state = ResponseModel.loading("is Loading...");

    try{
        dataFuture = await repository.getTopGainerData();
        state = ResponseModel.completed(dataFuture);
        notifyListeners();
    }catch(e){
      state = ResponseModel.error("please check your connection...");
      notifyListeners();
    }
  }

  getTopLosersData() async {

    state = ResponseModel.loading("is Loading...");

    try{
      response = await apiProvider.getTopLosersData();

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