
import 'package:flutter/material.dart';

class DecimalRounder{

  static String removePriceDecimals(price){
    String finalPrice;
    if(price! < 1){
      finalPrice = price.toStringAsFixed(6);
    }else if(price < 10){
      finalPrice = price.toStringAsFixed(5);
    } else if(price < 100){
      finalPrice = price.toStringAsFixed(4);
    } else{
      finalPrice = price.toStringAsFixed(2);
    }
    return finalPrice;
  }

  static String removeChartPriceDecimals(price){
    String finalPrice;
    if(price! < 1){
      finalPrice = price.toStringAsFixed(4);
    }else if(price < 10){
      finalPrice = price.toStringAsFixed(4);
    } else if(price < 100){
      finalPrice = price.toStringAsFixed(2);
    } else{
      finalPrice = price.toStringAsFixed(0);
    }
    return finalPrice;
  }

  static String removePercentDecimals(percent24){
    String percentChange;
    if(percent24! > 10000){
      percentChange = percent24.toStringAsFixed(0);
    }else{
      percentChange = percent24.toStringAsFixed(2);
    }
    return percentChange;
  }

  static MaterialColor setColorFilter(percent24){
    MaterialColor filterColor;
    if(percent24 >= 0.0){
      filterColor = Colors.green;
    }else{
      filterColor = Colors.red;
    }
    return filterColor;
  }

  static Color setPercentChangesColor(percent24){
    Color percentColor;
    if(percent24 < 0){
      percentColor = Colors.red;
    }else if(percent24 > 0){
      percentColor = Colors.green;
    }else{
      percentColor = Colors.white12;
    }
    return percentColor;
  }

  static Icon setPercentChangesIcon(percent24){
    Icon percentIcon;

    if(percent24 < 0){
      percentIcon = const Icon(Icons.arrow_drop_down,color: Colors.red,);
    }else if(percent24 > 0){
      percentIcon = const Icon(Icons.arrow_drop_up,color: Colors.green,);
    }else{
      percentIcon = const Icon(Icons.minimize,color: Colors.grey,);
    }

    return percentIcon;
  }
}