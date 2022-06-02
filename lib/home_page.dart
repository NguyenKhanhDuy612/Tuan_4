import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuan_4/provider_vidu/my_app.dart';
import 'package:tuan_4/sqllite/page_sqlite_app.dart';

import 'BaiTap2_chuyenAnh/chuyenAnh.dart';
import 'BaiTap3_form/page_mathang.dart';
import 'BaiTap4_form/fruit_list.dart';
import 'BaiTap4_lan2/DSSP.dart';
import 'coban/my_listview.dart';
import 'firebase/authentication/login_page.dart';
import 'firebase/cloud_firestore/page_home_friebase_app.dart';
import 'json/RSS/NewsPage.dart';
import 'json/image_JSON/photos_json.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Nguyễn Khánh Duy_61133540")),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
                // NewsPage
              children: [
                buttonBuider(context, title: "Bài 2 Chuyển ảnh", destination: Myasset_image()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Danh sách", destination: MyListViewPage()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Bài 3 Form Bài tập video", destination: PageFormMatHang()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Bài 4 Form_GidView Giải cứu trái cây", destination: MyListFruit()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Provider Demo", destination: MyProviderApp()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Danh Sach SP Provider", destination: ListProduct()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Json", destination: PhotosPageState()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Doc Bao", destination: NewsPage()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "SQl", destination: SQLiteApp()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "My FireBase", destination: PageHomeFirebase()),
                SizedBox(height: 10,),
                buttonBuider(context, title: "Đăng nhập", destination: LoginPage()),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonBuider(BuildContext context, { required String title, required Widget destination} ) {
   return SizedBox(
     width: 200,height: 50,
     child: ElevatedButton(
         onPressed: () => Navigator.push(context,
             MaterialPageRoute(builder: (context) => destination,)
         ),
         child: Text(title)
     ),
   );
  }
}
