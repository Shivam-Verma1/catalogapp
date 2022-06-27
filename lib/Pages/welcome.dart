import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/images/get1.png'),
      
        )
      ),    
    );
  }
}