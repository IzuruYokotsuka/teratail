void main() {
  var _list = <String>['one', 'two', 'three'];

  // ↓ print(void)みたいな感じなのでエラー
  // print(_list.shuffle());

  // _list.shuffle();
  // print(_list);

  // カスケード記法は破壊的に変更した後の_listを返してくれる
  // print((_list..shuffle()).first);
}
