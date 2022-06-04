import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/Utills/VotesController.dart';

class VoteList extends GetView<VoteListController>{

  VoteList({Key? key}) : super(key: key);
  final VoteListController controller = Get.put(VoteListController());

  List<votedata> tumOgrenciler = List.generate(
    50,
        (index) => votedata(index+1, "item name for ${index+1}", index.toString() , "decription for item number ${index+1}", index.toString()),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView.separated(
        itemBuilder: (context, index) {
      var currentvote = tumOgrenciler[index];
      return Card(
        color: index % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(currentvote.itemname),
          subtitle: Text(currentvote.dec),
          leading: CircleAvatar(
            child: Text(currentvote.id.toString()),
          ),
          onTap: () {
            EasyLoading.showToast(
              "Eleman Tiklandi",
              toastPosition: EasyLoadingToastPosition.bottom,
            );
          },
          onLongPress: () {
            _alertDialogIslemleri(context, currentvote.itemname);
          },
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


class votedata {
  final int id;
  final String itemname;
  final String votenumber;
  final String img;
  final String dec;


  votedata(this.id, this.itemname, this.votenumber,this.dec,this.img);
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
                    "Positive   ",
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                      "Negative",
                  ),
                ),
              ],
            )
          ],
        );
      });
}
