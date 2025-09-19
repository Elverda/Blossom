import 'package:solo/models/pengguna.dart'; // Path disesuaikan dengan proyek Anda

// Inheritance: Kelas User (pengguna biasa) mewarisi dari kelas Pengguna
class User extends Pengguna {
  String _email; // Properti privat khusus User (Encapsulation)

  User(String userId, String username, String password, this._email)
      : super(userId, username, password); // Memanggil konstruktor kelas induk

  // Getter publik untuk email (Encapsulation)
  String get email => _email;

  // Setter publik untuk email (Encapsulation)
  set email(String newEmail) {
    _email = newEmail;
  }

  // Polimorfisme: Meng-override metode tampilkanInfo dari kelas Pengguna
  @override
  String tampilkanInfo() {
    return 'USER - ID: $userId, Username: $username, Email: $_email';
  }

  // Metode khusus untuk kelas User
  String lihatProfil() {
    return 'User $username sedang melihat profilnya.';
  }
}
