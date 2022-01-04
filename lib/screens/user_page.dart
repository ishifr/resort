import 'package:resort_exam/constants/export.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return SafeArea(
      child: Container(
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              height: getH(82.0),
              child: ListTile(
                tileColor: Colors.white,
                leading: CircleAvatar(
                  radius: getW(30),
                ),
                title: Text(
                  "Someone One",
                  style: TextStyle(
                      fontSize: getFont(22.0), fontWeight: FontWeight.w600),
                ),
              ),
            ),
            listTiles(icon: Icons.favorite, text: 'Your favorites'),
            listTiles(icon: Icons.payment, text: 'Payment'),
            listTiles(icon: Icons.support, text: 'Help'),
            listTiles(icon: Icons.paid_rounded, text: 'Promotions'),
            listTiles(icon: Icons.settings, text: 'Settings'),
          ],
        ),
      ),
    );
  }

  ListTile listTiles({icon, text}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.orange.shade300,
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: getFont(20.0), fontWeight: FontWeight.w600),
      ),
    );
  }
}
