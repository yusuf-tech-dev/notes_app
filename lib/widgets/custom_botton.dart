

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap,this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return isLoading ? const CircularProgressIndicator() :GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(10)),
        child: const Center(child: Text('Add',style: TextStyle(
       
          fontSize: 16,color: Colors.black),),),
      ),
    );
  }
}