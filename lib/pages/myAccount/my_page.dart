import 'package:flutter/material.dart';


class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Colors.green,),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  padding: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle,
                          size: 24,
                          color:Colors.blueGrey
                        ),
                        Container(width: 50),
                        Text(
                          "ログイン",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  padding: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 24,
                          color:Colors.blueGrey
                        ),
                        Container(width: 50),
                        Text(
                          "お問合せ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Positioned(
              top: 20,
              left: 20,
              child: Icon( Icons.settings, size: 30, color: Colors.blueGrey),
            ),
            const Positioned(
              top: 20,
              right: 20,
              child: Icon( Icons.search, size: 30, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
