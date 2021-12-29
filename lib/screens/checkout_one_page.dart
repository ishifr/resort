import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/logic/change_checkbox.dart';

import 'checkout_two_page.dart';

class CheckOutOnePage extends StatelessWidget {
  CheckOutOnePage({Key? key}) : super(key: key);
  var _key = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListTile(
                horizontalTitleGap: 0.0,
                minVerticalPadding: 0.1,
                leading: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                title: Text(
                  'Reservation',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: getFont(28.0)),
                ),
              ),
            ),
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: getH(44), bottom: getH(45.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            steps(a: true, step: '1'),
                            line(a: false),
                            steps(a: false, step: '2'),
                            line(a: false),
                            steps(a: false, step: '3'),
                          ],
                        ),
                      ),
                      Form(
                          key: _key,
                          child: Column(
                            children: [
                              textFields(
                                  hint: 'First Name',
                                  controller: nameController),
                              textFields(
                                  hint: 'Last Name',
                                  controller: lastNameController),
                              textFields(
                                  hint: 'Email Address',
                                  controller: emailController),
                              textFields(
                                  hint: 'Address',
                                  controller: addressController),
                              textFields(
                                  hint: 'Post Code',
                                  controller: postController),
                              textFields(
                                  hint: 'Country',
                                  controller: countryController),
                              textFields(
                                  hint: 'Mobile Phone',
                                  controller: mobileController),
                            ],
                          )),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>ChangeNotifierProvider(create: (_) => ChangeBox(),child: CheckOutTwoPage(),)));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xffF8A170),
                                Color(0xffFFCD61)
                              ]),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Go to Payment',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          fixedSize: Size(getW(338.0), getH(65.0)),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  steps({a, step}) {
    return CircleAvatar(
      radius: getW(18.0),
      backgroundColor: a ? Colors.orange.shade300 : Colors.grey.shade300,
      child: Text(
        step,
        style: TextStyle(
          color: Colors.white,
          fontSize: getFont(18.0),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  line({a}) {
    return SizedBox(
      width: getW(25.0),
      child: Divider(
        // indent: getW(144.0),
        // endIndent: getW(170.0),
        // height: 0.0,
        color: a ? Colors.orange.shade300 : Colors.grey.shade300,
        thickness: getH(2.0),
      ),
    );
  }

  textFields({hint, controller}) {
    return Container(
      height: getH(50.0),
      margin: EdgeInsets.only(bottom: getH(18.0)),
      padding: EdgeInsets.symmetric(horizontal: getW(20.0)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: getW(14.0)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hint,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(getW(10.0)))),
      ),
    );
  }
}
