
import 'package:hive/hive.dart';
import 'package:network2/user.dart';

class LoginController {

  addUser(User item) async {
    var box = await Hive.openBox<User>('users');
    box.add(item);
  }

}

