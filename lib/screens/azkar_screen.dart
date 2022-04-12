import 'package:flutter/material.dart';

import 'package:azkar/screens/about_app_screen.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'سبحة الأذكار',
          style: TextStyle(fontFamily: 'Noto', color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('الحمد لله'),
                  value: 'الحمد لله',
                ),
                const PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                ),
                const PopupMenuItem(
                  child: Text('أستغفر الله'),
                  value: 'أستغفر الله',
                ),
              ];
            },
          ),
          IconButton(
              onPressed: () {
                //(context)=>AboutScreen()
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AboutAppScreen(message: 'مشروع إلانسر (طرقة تانية)  ',) ,
                  ),
                );
              },
              // onPressed: () => Navigator.pushNamed(
              //   context,
              //   '/about_screen',
              //   arguments: {
              //     'message':'مشروع إلانسر'
              //   }
              // ),
              icon: Icon(Icons.info_outline))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/R.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/sp.jpg'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(0, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Noto',
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تسبيح',
                      style: TextStyle(
                        fontFamily: 'Noto',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'إعادة',
                      style: TextStyle(
                        fontFamily: 'Noto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
