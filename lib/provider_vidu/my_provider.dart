import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends ChangeNotifier{
  int _value = 0;


// đọc dữ liệu ban đầu lên
//   Counter(){
//
//   }
//   int get value => _value;// Trạng thái của ứng dụng
  Future<int> getValue() async{
      SharedPreferences preferences = await SharedPreferences.getInstance();
    _value = await preferences.getInt("counter", ) ?? 0;
    return _value;
  }
  // void getValue() async{
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  // }
  void increment() async{
    // _value ++;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt("counter", ++_value).
    whenComplete(() => notifyListeners());
    notifyListeners();// để cập nhật lại
  }

}