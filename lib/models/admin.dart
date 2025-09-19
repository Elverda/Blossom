import 'package:solo/models/pengguna.dart'; // Path disesuaikan dengan proyek Anda

// Inheritance: Kelas Admin mewarisi dari kelas Pengguna
class Admin extends Pengguna {
  String _hakAkses; // Properti privat khusus Admin (Encapsulation)

  Admin(String userId, String username, String password, this._hakAkses)
      : super(userId, username, password); // Memanggil konstruktor kelas induk

  // Getter publik untuk hak akses (Encapsulation)
  String get hakAkses => _hakAkses;

  // Setter publik untuk hak akses (Encapsulation)
  set hakAkses(String newHakAkses) {
    _hakAkses = newHakAkses;
  }

  // Polimorfisme: Meng-override metode tampilkanInfo dari kelas Pengguna
  @override
  String tampilkanInfo() {
    return 'ADMIN - ID: $userId, Username: $username, Hak Akses: $_hakAkses';
  }

  // Metode khusus untuk kelas Admin
  String kelolaSistem() {
    return 'Admin $username sedang mengelola sistem.';
  }
}
