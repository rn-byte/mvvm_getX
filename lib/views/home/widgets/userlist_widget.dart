import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_flutter/view_models/controller/home/home_view_model.dart';

class UserlistWidget extends StatefulWidget {
  const UserlistWidget({super.key});

  @override
  State<UserlistWidget> createState() => _UserlistWidgetState();
}

class _UserlistWidgetState extends State<UserlistWidget> {
  HomeViewModel homeViewModel = Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeViewModel.userList.value.data!.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  homeViewModel.userList.value.data![index].avatar.toString()),
            ),
            title: Text(
                '${homeViewModel.userList.value.data![index].firstName} ${homeViewModel.userList.value.data![index].lastName}'),
            subtitle: Text(
                homeViewModel.userList.value.data![index].email.toString()),
          ),
        );
      },
    );
  }
}
