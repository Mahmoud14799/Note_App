import 'package:flutter/material.dart';

class CustomButtonSheet extends StatelessWidget {
  const CustomButtonSheet({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  )),
      ),
    );
  }
}
