class Player {
  String _name;
  int _points = 0;

  Player(String name) : this._name = name;

  String get name => this._name;
  set name(String value) => this._name = value;

  int get points => this._points;
  void addPoints(int value) => this._points += value;
}
