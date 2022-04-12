import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
String _massage='مشروع';
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute=ModalRoute.of(context);
    if (modalRoute !=null) {
      Map<String,dynamic>arguments= modalRoute.settings.arguments as Map<String,dynamic>;
      if (arguments.containsKey('massage')) {
        _massage=arguments['message'];
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed:()=> Navigator.pop(context) ,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title:  Text(
          _massage,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Noto',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'تطبيق سبحة الأذكار ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Noto',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
