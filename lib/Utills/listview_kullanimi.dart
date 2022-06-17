import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:sidebaaar/models/PostModelController.dart';
import 'package:sidebaaar/models/Post_Model.dart';
import '../provider.dart';


class ListViewKullanimi extends GetView<PostModelController> {


  final PostModelController controller = Get.put(PostModelController());




  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:  controller.obx(
          (data)=> Center(child:
           ListView.separated(
            itemBuilder: (context, i) {



              return Card(

                color: i % 2 == 0 ? Colors.green[300] : Colors.cyan[200],
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(

                  title: Text("Name:" + data![i]['strMeal'],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                  subtitle: Text('FooD id :  '+data[i]['idMeal'],),
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(data[i]['strMealThumb']),
                  ),
                  onTap: () {
                    EasyLoading.showToast(
                      "Item",
                      toastPosition: EasyLoadingToastPosition.bottom,
                    );
                  },
                    onLongPress: () {
                      _alertDialogIslemleri(context, data![i]['strMeal'],data![i]['strMealThumb'],data![i]['strInstructions']);
                    }
                ),

              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.blueGrey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              );
            },
            itemCount:data!.length,
          ),
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

void _alertDialogIslemleri(BuildContext myContext, String name , String pic,String dec) {
  showDialog(
      context: myContext,
      builder: (contex) {
        return AlertDialog(
          title:Image.network(pic,),
          content:Text(dec),

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
