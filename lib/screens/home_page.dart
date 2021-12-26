import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/widgets/home_page_initial.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController place = TextEditingController();
  TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var read = context.read<HomeDropDownProvider>();
    // var watch = context.watch<HomeDropDownProvider>();
    SizeConfig.init(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: getH(500.0),
            child: Stack(
              children: [
                Container(
                  height: getH(360.0),
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken),
                          fit: BoxFit.fitWidth,
                          image: const NetworkImage(
                              'https://images.unsplash.com/photo-1535827841776-24afc1e255ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'))),
                ),
                Positioned(
                    top: getH(90.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: getW(18.0)),
                      child: Text(
                        "Find a perfect place\nto stay",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getFont(36.0),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 0,
                    child: Container(
                      height: getH(260.0),
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Color(0xff393939),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(28.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Form(
                              child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: getW(210.0),
                                    child: HomeTextFields().textFormFields(
                                        context,
                                        controller: place,
                                        hintText: 'Place'),
                                  ),
                                   Container(
                                    height: getH(50.0),
                                    width: getW(100.0),
                                    margin: EdgeInsets.only(left: getW(18.0)),
                                    padding: EdgeInsets.only(
                                        left: getW(13.0), right: getW(6)),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        borderRadius:
                                            BorderRadius.circular(getW(10.0))),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.grey,
                                        ),
                                        elevation: 0,
                                        dropdownColor: Colors.grey.shade700,
                                        hint: Text(
                                          _value,
                                        ),
                                        items: [
                                          _dropDownItem(
                                              itemValue: '1', type: 'Just'),
                                          _dropDownItem(
                                              itemValue: '2', type: 'Guests'),
                                          _dropDownItem(
                                              itemValue: '3', type: 'Some'),
                                        ],
                                        onChanged: (value) {
                                          print(value);
                                          context.read<HomeDropDownProviderTop>().changeDropDown(v: value);
                                        },
                                        value: context.watch<HomeDropDownProviderTop>().changeDropDown(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getH(23.0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: getW(210.0),
                                    child: HomeTextFields().textFormFields(
                                        context,
                                        controller: place,
                                        hintText: 'Date'),
                                  ),
                                  Container(
                                    height: getH(50.0),
                                    width: getW(100.0),
                                    margin: EdgeInsets.only(left: getW(18.0)),
                                    padding: EdgeInsets.only(
                                        left: getW(13.0), right: getW(6)),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade800,
                                        borderRadius:
                                            BorderRadius.circular(getW(10.0))),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.grey,
                                        ),
                                        elevation: 0,
                                        dropdownColor: Colors.grey.shade700,
                                        hint: Text(
                                          _value,
                                        ),
                                        items: [
                                          _dropDownItem(
                                              itemValue: '1', type: 'Nights'),
                                          _dropDownItem(
                                              itemValue: '2', type: 'Days'),
                                          _dropDownItem(
                                              itemValue: '3', type: 'Other'),
                                        ],
                                        onChanged: (value) {
                                          print(value);
                                          context.read<HomeDropDownProviderBottom>().changeDropDown(v: value);
                                        },
                                        value: context.watch<HomeDropDownProviderBottom>().changeDropDown(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                          ElevatedButton(
                            onPressed: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color(0xffF8A170),
                                    Color(0xffFFCD61)
                                  ]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  'Search a room',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: const Color(0xff393939),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              fixedSize: Size(getW(360.0), getH(70.0)),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var _value = '1';
  // dropDownAge(context, elements) {
  //   SizeConfig.init(context);
  //   return Container(
  //     height: getH(50.0),
  //     width: getW(100.0),
  //     margin: EdgeInsets.only(left: getW(18.0)),
  //     padding: EdgeInsets.only(left: getW(13.0), right: getW(6)),
  //     decoration: BoxDecoration(
  //         color: Colors.grey.shade800,
  //         borderRadius: BorderRadius.circular(getW(10.0))),
  //     child: DropdownButtonHideUnderline(
  //       child: DropdownButton(
  //         icon: const Icon(
  //           Icons.keyboard_arrow_down,
  //           color: Colors.grey,
  //         ),
  //         elevation: 0,
  //         dropdownColor: Colors.grey.shade700,
  //         hint: Text(
  //           _value,
  //         ),
  //         items: [
  //           _dropDownItem(itemValue: '1', type:'Just'),
  //           _dropDownItem(itemValue: '2', type: 'Guests'),
  //           _dropDownItem(itemValue: '3', type: 'Some'),
  //         ],
  //         onChanged: (value) {
  //           print(value);

  //         },
  //         value:,
  //       ),
  //     ),
  //   );
  // }

  DropdownMenuItem<String> _dropDownItem({itemValue, type}) {
    return DropdownMenuItem(
      value: itemValue,
      child: Text(type, style: const TextStyle(color: Colors.grey)),
    );
  }
}
