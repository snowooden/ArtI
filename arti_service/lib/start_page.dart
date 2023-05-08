import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 550,
            child: TextImageSlider(
              texts: [
                'ArtI\n\n인공지능 그림 도우미',
                'ArtI Book\n\n말하는대로 동화를 만들어줘요.',
                'ArtI Stlyer\n\n내 그림을 이쁘게 바꿔줘요.',
              ],
              images: [
                'https://cdn.pixabay.com/photo/2018/08/31/08/35/toys-3644073_960_720.png',
                'https://cdn.pixabay.com/animation/2023/01/22/15/04/15-04-33-244_512.gif',
                'https://cdn.pixabay.com/animation/2022/12/26/19/49/19-49-19-662_512.gif',
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
              // 버튼이 클릭될 때 수행되는 코드
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.pink[200], // 버튼 글자의 색
              elevation: 5, // 그림자 크기
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // 버튼의 모서리를 둥글게
              ),
            ),
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}

class TextImageSlider extends StatefulWidget {
  final List<String> texts;
  final List<String> images;

  const TextImageSlider({
    Key? key,
    required this.texts,
    required this.images,
  }) : super(key: key);

  @override
  _TextImageSliderState createState() => _TextImageSliderState();
}

class _TextImageSliderState extends State<TextImageSlider> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.texts.length,
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(40),
                    alignment: Alignment.center,
                    child: Text(
                      widget.texts[index],
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        color: Colors.pink[200],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      widget.images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < widget.texts.length; i++) {
      indicators.add(
        Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == i ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
