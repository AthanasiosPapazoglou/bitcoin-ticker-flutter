import 'package:bitcoin_ticker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'network.dart';


class ApiDataCateg {
  Future<dynamic> getCurrencyRatio(String DCS, String PCS ) async {
    
    var url = '$apiCoreURL$DCS/$PCS?apikey=$apiKey';
    NetworkHelper networkHelper = NetworkHelper(url);

    var fullData = await networkHelper.getData();
    return fullData["rate"];
  }
}
