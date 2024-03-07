import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Something went wrong please try again', style: TextStyle(
            fontWeight: FontWeight.w700
          ),),
          ElevatedButton(onPressed: (){}, child: const Text('Try again'))
        ],
      ),
    );
  }
}