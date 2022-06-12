import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'ListController.dart';

class ListViewKullanimi extends GetView<ListController> {
  ListViewKullanimi({Key? key}) : super(key: key);
  final ListController controller = Get.put(ListController());
  List<itemdata> tumOgrenciler = List.generate(
    50,
    (index) =>itemdata(index + 1, "Item Number${index + 1}", true, "decription for item number ${index+1 }", index + 2, "Item Name for Item number ${index+1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          var item = tumOgrenciler[index];
          return Card(
            color: index % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              title: Text(item.dec),
              subtitle: Text(item.name),
              leading: CircleAvatar(
                child: Text(item.id.toString()),
              ),
              onTap: () {
                EasyLoading.showToast(
                  "Eleman Tiklandi",
                  toastPosition: EasyLoadingToastPosition.bottom,
                );
              },
                onLongPress: () {
                  _alertDialogIslemleri(context, item.name);
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
        itemCount: tumOgrenciler.length,
      ),
    );
  }




}

class itemdata {
  final int id;
  final String img;
  final bool existence;
  final String dec;
  final int expdate;
  final String name;

  itemdata(this.id, this.img, this.existence,this.dec,this.expdate,this.name);
}

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
