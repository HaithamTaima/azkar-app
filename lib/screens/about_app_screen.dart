import 'package:flutter/material.dart';
class AboutAppScreen extends StatefulWidget {
  final String message;


  AboutAppScreen({ required this.message});

  @override
  State<AboutAppScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
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
          widget.message,
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
