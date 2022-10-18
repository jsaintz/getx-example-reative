import 'package:get/get.dart';
import 'package:getx_example_reative/model/user_model.dart';

class UserController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName) {
    //example 1
    user.value.name = userName;
    user.refresh();
  }

  void setUserAge(int userAge) {
    //example 2
    user.update((obj) {
      obj?.age = userAge;
    });
  }
}
