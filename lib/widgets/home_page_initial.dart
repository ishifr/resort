
import 'package:resort_exam/constants/export.dart';

class HomeTextFields{

   textFormFields(context, {controller, hintText}) {
    SizeConfig.init(context);
    return SizedBox(
      height: getH(50.0),
      width: getW(210.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(getW(14.0))),
            filled: true,
            fillColor: Colors.grey.shade800,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(getW(14.0))),
            contentPadding: EdgeInsets.only(left: getW(10.0))),
      ),
    );
  }
}

