import 'dart:io';

import 'package:dukkentek/App/Utilities/app_constant.dart';
import 'package:dukkentek/App/Utilities/utilities.dart';

import '../Models/event_model.dart';
import 'package:http/http.dart' as http;
class SearchRepo{

  static Future<EventsModel?> searchEvent(String event) async {
      http.Response response;
      try{
          response = await http.get(
              Uri.parse('${AppConstant.BASE_URL}${AppConstant.API_PARAMS}$event'));
              if(response.statusCode == 200){
                print(response.body);
                return eventsModelFromJson(response.body);
              }else{
                return null ;
              }
      }on SocketException{
          toastMe('Error connection');
          return null;
      }
  }


}
