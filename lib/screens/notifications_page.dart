import 'package:resort_exam/constants/export.dart';

import 'home_search_list.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: getW(40.0), top: getH(37.0)),
            width: size.width,
            height: getH(236.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    fit: BoxFit.cover,
                    image: const NetworkImage(
                        'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Deals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getFont(32.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Nov 12-24',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getFont(18.0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: getH(20.0)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeSearchList()));
                  },
                  child: Container(
                    height: getH(60.0),
                    width: getW(294.0),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xffF8A170), Color(0xffFFCD61)]),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        'Search a room',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          messagesN(size,
              lineOne: 'Plaese rate your stay at Venice',
              lineTwo: 'Royal, Venice, Italy.',
              id: false),
          messagesN(size,
              lineOne: 'Your stay at Hotel Venice Royal is',
              lineTwo: 'booked in 2 days!',
              id: false),
          messagesN(size,
              lineOne: 'You have earned 3000 loyalty points!',
              lineTwo: 'See how to use them here.',
              id: true),
        ],
      ),
    );
  }

  Container messagesN(Size size, {lineOne, lineTwo, id}) {
    return Container(
      color: id ? Colors.amber[50] : Colors.transparent,
      width: size.width,
      height: getH(124.0),
      padding: EdgeInsets.only(right: getW(28.0), left: getW(28.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '$lineOne\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: getFont(18.0),
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: '\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: getFont(18.0),
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: lineTwo,
              style: TextStyle(
                decoration: id ? TextDecoration.underline : TextDecoration.none,
                color: Colors.black,
                fontSize: getFont(18.0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ])),
          Icon(
            Icons.arrow_forward_ios,
            color: id ? Colors.amber : Colors.grey,
            size: getW(20.0),
          ),
        ],
      ),
    );
  }
}
