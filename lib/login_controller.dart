
import 'package:network2/login_model.dart';

class LoginController {
    final List<LoginModel> _data = [
           LoginModel("aboodalyawar@gmail.com", "123456"),
           LoginModel("ebra98@gmail.com", "123456"),
           LoginModel("alueManar7@gmail.com", "123456"),
           LoginModel("test@gmail.com", "123456"),
           LoginModel("test2@gmail.com", "123456"),
     ];


   bool login(String username , String password){
           for(LoginModel model in _data){
                 if(model.password==password&& username==model.username){
                      return true;
                 }
           }
           return false;
    }

}

