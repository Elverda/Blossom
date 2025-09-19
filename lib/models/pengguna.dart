class Pengguna {
  String _userId;
  String _username;
  String _password;

  Pengguna(this._userId, this._username, this._password);

  String get userId => _userId;
  String get username => _username;

  set username(String newUsername) {
    _username = newUsername;
  }

  bool verifikasiPassword(String inputPassword) {
    return _password == inputPassword;
  }

  String tampilkanInfo() {
    return 'ID Pengguna: $_userId, Username: $_username';
  }}