import 'package:flutter/material.dart';

import 'form_model.dart';

class PageFormMatHang extends StatelessWidget {
  PageFormMatHang({Key? key}) : super(key: key);
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtSoLuong = TextEditingController();
  MatHang m =MatHang();
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formState,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              TextFormField(
                controller: txtName,
                onSaved: (newValue) => m.name = newValue,
                validator: (value) => validateString(value),
                decoration: InputDecoration(
                  labelText: "Tên mặt hàng"
                ),
              ),
              DropdownButtonFormField<String>(
                onChanged: (value) => dropdownValue = value,
                onSaved: (newValue) => m.loaiMH = newValue,
                validator: (value) => validateString(value),
                value: dropdownValue,
                decoration: InputDecoration(
                  labelText: "Loại mặt hàng"
                ),
                items: loaiMHs.map((
                    loaiMH) => DropdownMenuItem<String>(
                    child: Text("${loaiMH}"),
                  value: loaiMH,
                )).toList(),
              ),
              TextFormField(
                controller: txtSoLuong,
                onSaved: (newValue) => m.soluong = int.parse(newValue!),
                validator: (value) => validateSoluong(value),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Số lượng (>0)"
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () => _save(context),
                      child: Text("Lưu"))
                ],
              )

            ],
          ),

        ),
      ),
    );
  }

  _save(BuildContext context) {
    if(formState.currentState!.validate()){
      formState.currentState!.save();
      hienTHiDiaLog(context);
    }

  }

  validateString(String? value) {
    return value == null || value.isEmpty ? "Bạn chưa nhập dữ liệu" : null;
  }

  validateSoluong(String? value) {
    if(value == null || value.isEmpty)
      return "Bạn chưa nhập số lượng";
    else
      return int.parse(value)<0 ? "Số lượng không được bé hơn 0" : null;
  }

  void hienTHiDiaLog(BuildContext context) {
    var dialog = AlertDialog(
      title: Text("Thông báo"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Đây là mặt hàng bạn đã chọn "),
          Text("Tên MH: ${m.name}"),
          Text("Loại MH: ${m.loaiMH}"),
          Text("Số lượng: ${m.soluong}"),
        ],
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("OK"),
        )
      ],
    );
    showDialog(
        context: context,
        builder:(context) => dialog
    );
  }
}
