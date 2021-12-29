import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/screens/checkout_one_page.dart';
import 'package:resort_exam/widgets/checkout_three.dart';

class CheckOutThreePage extends StatelessWidget {
  CheckOutThreePage({Key? key}) : super(key: key);
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
                            EdgeInsets.only(top: getH(44), bottom: getH(25.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CheckOutOnePage().steps(a: true, step: '1'),
                            CheckOutOnePage().line(a: true),
                            CheckOutOnePage().steps(a: true, step: '2'),
                            CheckOutOnePage().line(a: true),
                            CheckOutOnePage().steps(a: true, step: '3'),
                          ],
                        ),
                      ),
                      checkOutThree(context),
                      Container(
                        width: size.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: getW(20.0), vertical: getH(20.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            texts(text: '2 People'),
                            texts(text: 'Standard King Room'),
                            texts(text: '2 nights'),
                            texts(text: 'Jan 18 2019 to Jan 20 2019'),
                          ],
                        ),
                      ),
                      Divider(
                          indent: getW(20.0),
                          endIndent: getW(20.0),
                          thickness: 1.1),
                      ListTile(
                        contentPadding: EdgeInsets.only(
                            right: getW(26.0), left: getW(20.0),top: getH(15.0),bottom: getH(15.0)),
                        title: Text(
                          "\$1487 USD",
                          style: TextStyle(
                              fontSize: getFont(36.0),
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: Icon(Icons.info,
                            color: Colors.grey.shade300, size: getW(26.0)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xffF8A170),
                                Color(0xffFFCD61)
                              ]),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              'Complete',
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

  texts({text}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getH(6.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: getFont(16.0),
          color: Colors.grey,
        ),
      ),
    );
  }
}
