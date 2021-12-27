import 'package:resort_exam/constants/export.dart';

class ChangeHomeProvider extends ChangeNotifier {
  static int value = 0;

  changeScreen({int? v}) {
    value = v ?? value;

    notifyListeners();
    return value;
  }
}

class DropDownProviderTop extends ChangeNotifier {
  static String value = '1';
  changeDropDown({v}) {
    value = v ?? value;

    notifyListeners();
    return value;
  }
}

class DropDownProviderBottom extends ChangeNotifier {
  static Object value = '1';
  changeDropDown({v}) {
    value = v ?? value;
    notifyListeners();
    return value;
  }
}

// class HomeSearchListProvider extends ChangeNotifier{
//   static bool value=false;
//   changeScreens({bo}){
//     value = bo??true;
//     notifyListeners();
//     return value;
//   }
// }