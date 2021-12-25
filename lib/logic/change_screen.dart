import 'package:resort_exam/constants/export.dart';

class ChangeScreen extends ChangeNotifier {

  static int value = 0;

   changeScreen({int? v}){
    print('object');
    value = v == null? value:v;
    
    notifyListeners();
    return value;
  }
  
}



