import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // 여기서 MyApp은 앱이 시작될 때 뼈대를 만들어주는 역할을 하는 정적인 위젯이다.
// 곧 StatelessWidget으로 만들 예정이다.

class MyApp extends StatelessWidget{ //뼈대 <- 정적인 뼈대 StatelessWidget이다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //트리에서 두번째 위젯으로 위치한다.
      title: "First app", //Text메서드를 사용하지 않는다. (MaterilaApp안에 title은 최근 사용한 앱 이름에 표시가 된다.)
      theme: ThemeData( //기본 색상
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

//위젯을 만들때에는 StatelessWidget으로 만들것인지 아니면 StatefulWidget으로 만들것인지 항상 고민해야한다.
// 모든 커스텀 위젯은 또 다른 위젯을 리턴하는 빌드 함수를 가지고 있다.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //발판을 만들어주다라는 뜻이다. 다양한 요소들을 그릴 수 있게 해준다. 스카폴드가 없으면 어떠한 요소도 앱에 배치할 수 없다.
      appBar: AppBar(
        title: Text("First app"), //Text 메서드를 사용한다.
      ),
      body: Center( //가운데 정렬
        child: Column( //자식들 세로로 배치
          children: <Widget>[ //세로로 정렬될 여러 자식들 배치를 한다.
            Text("Hello"),
            Text("Hello"),
            Text("Hello")
          ],
        ),
      ),
    );
  }
}
