// https://juejin.im/post/5ba26c086fb9a05ce57697da
// 第一步是引入yaml文件库
// 第二步创建 CountState
class CountState  {
  int _count;
  get count => _count;

  CountState(this._count);

  static initState() {}
}