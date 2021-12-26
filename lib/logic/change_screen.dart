import 'package:resort_exam/constants/export.dart';

class ChangeHomeProvider extends ChangeNotifier {

  static int value = 0;

   changeScreen({int? v}){
    value = v ?? value;
    
    notifyListeners();
    return value;
  }
}

class HomeDropDownProviderTop extends ChangeNotifier {
  
  static Object value = '1';
  changeDropDown({v}){
  
    value =v?? value;
    
    notifyListeners();
    return value;
 
    
  }
}class HomeDropDownProviderBottom extends ChangeNotifier {
  
  static Object value = '1';
  changeDropDown({v}){
  
    value =v?? value;
    
    notifyListeners();
    return value;
 
    
  }
}