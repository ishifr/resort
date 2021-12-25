import 'package:resort_exam/constants/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                          fit: BoxFit.fitWidth,
                          image: const NetworkImage(
                              'https://images.unsplash.com/photo-1535827841776-24afc1e255ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'))),
                ),
                // Positioned(child: ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      height: getH(260.0),
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Color(0xff393939),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0))),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
