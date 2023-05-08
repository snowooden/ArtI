import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('MainView'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // padding: EdgeInsets.all(16.0),
        // child: Text('LoginSuccess'),
        children: [
          const SizedBox(
            // width: 150,
            height: 80,
          ),
          const Text(
            "ArtI",
            style: TextStyle(
              color: Color(0xff6a515e),
              fontSize: 28,
            ),
          ),
          const SizedBox(
            width: 400,
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              // borderRadius: BorderRadius.circular(10),
              color: Colors.pink[50],
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 190,
                  height: 60,
                  child: InkWell(
                    onTap: () {
                      print('ArtiStyler 클릭');
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 129,
                              height: 23,
                              child: Text(
                                "ArtI Styler",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff6a515e),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            SizedBox(
                              width: 89.13,
                              height: 29,
                              child: Text(
                                "567",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffc6abb9),
                                  fontSize: 24,
                                  fontFamily: "Merriweather",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  height: 60,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/booklist');
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 129,
                              height: 23,
                              child: Text(
                                "ArtI Book",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff6a515e),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            SizedBox(
                              width: 89.13,
                              height: 29,
                              child: Text(
                                "123",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffc6abb9),
                                  fontSize: 24,
                                  fontFamily: "Merriweather",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SizedBox(
                width: 300,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'ArtI Styler\n\nAI가 그려주는 내 그림',
                    style: TextStyle(fontSize: 22.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chatview');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'ArtI Book\n\nAI가 만들어주는 나만의 동화',
                    style: TextStyle(fontSize: 22.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
