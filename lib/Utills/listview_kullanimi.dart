import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/models/PostModelController.dart';
import 'package:sidebaaar/models/Post_Model.dart';


class ListViewKullanimi extends GetView<PostModelController> {


  final PostModelController dataController = Get.put(PostModelController());



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>dataController.isDataLoading.value? Center(child:CircularProgressIndicator(),):
         ListView.separated(
          itemBuilder: (context, i) {

            String name = '';

String lastname = '';

String image = '';

String comment = '';

try{
  image = 'dataController.post_list!.data![i].picture!';
}catch(e){
  image = '';
}

            try{
              'name = dataController.post_list!.data![i].firstName!';
            }catch(e){
              name = '';
            }
            return Card(
              color: i % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text('dataController.post_list!.data!.first.toString()'),
                subtitle: Text(name),
                leading: CircleAvatar(
                  child: Image.network(image),
                ),
                onTap: () {
                  EasyLoading.showToast(
                    "Eleman Tiklandi",
                    toastPosition: EasyLoadingToastPosition.bottom,
                  );
                },
                  onLongPress: () {
                    _alertDialogIslemleri(context, 'item.name');
                  }
              ),

            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.blueGrey,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            );
          },
          itemCount:controller.post_list!.results!.length.toInt(),
        ),
      ),
    );
  }




}

// class itemdata {
//   final int id;
//   final String img;
//   final bool existence;
//   final String dec;
//   final int expdate;
//   final String name;
//
//   itemdata(this.id, this.img, this.existence,this.dec,this.expdate,this.name);
// }

void _alertDialogIslemleri(BuildContext myContext, String name) {
  showDialog(
      context: myContext,
      builder: (contex) {
        return AlertDialog(
          title: Text(name),
          content: const Text("item name"),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "keep",
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "delete",
                  ),
                ),
              ],
            )
          ],
        );
      });
}
