import 'package:flutter/foundation.dart';
class SanPham{

}
class SanPhamChange extends ChangeNotifier{
  late List<SanPham> _list;
  List<SanPham> get list => _list;
  void delete(int index){
    _list.removeAt(index);
    notifyListeners();

    void update(SanPham moi, SanPham cu){
      // Gán tung thuộc tính cũ vào mới
      notifyListeners();
    }
  }
}