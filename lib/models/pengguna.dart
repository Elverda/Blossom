// Enkapsulasi: Menggunakan properti privat dengan underscore (_)
// dan menyediakan getter/setter jika diperlukan.
class Pengguna {
  String _userId;
  String _username;
  String _password; // Dalam aplikasi nyata, password tidak disimpan langsung atau di-hash

  Pengguna(this._userId, this._username, this._password);

  // Getter publik untuk mengakses properti privat
  String get userId => _userId;
  String get username => _username;

  // Setter publik jika diperlukan (contoh untuk username)
  set username(String newUsername) {
    _username = newUsername;
  }

  // Metode untuk verifikasi password (enkapsulasi perilaku)
  bool verifikasiPassword(String inputPassword) {
    return _password == inputPassword;
  }

  // Polimorfisme: Metode ini akan di-override di kelas turunan
  String tampilkanInfo() {
    return 'ID Pengguna: $_userId, Username: $_username';
  }}