import 'package:resort_exam/constants/export.dart';

class ChangeBox extends ChangeNotifier{

  static bool value = true;

  changeBox({v}){
    value = v??value;
    notifyListeners();
    
  }

}