import 'package:resort_exam/constants/export.dart';

class AllPages extends StatelessWidget {
  AllPages({Key? key}) : super(key: key);

  int currentPage = 0;
  List<Widget> pages = [
     HomePage(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.greenAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    
          final provider = Provider.of<ChangeHomeProvider>(context);
          var pro = ChangeHomeProvider().changeScreen();
          return Scaffold(
            body: pages[pro],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: pro,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.orange,
              onTap: (v) {
                provider.changeScreen(v: v);
              },
              items: [
                items(
                    icon: const Icon(Icons.home),
                    color: pro == 0
                        ? const Color(0xffffecc7)
                        : Colors.transparent),
                items(
                    icon: const Icon(Icons.search),
                    color: pro == 1
                        ? const Color(0xffffecc7)
                        : Colors.transparent),
                items(
                    icon: const Icon(Icons.notifications),
                    color: pro == 2
                        ? const Color(0xffffecc7)
                        : Colors.transparent),
                items(
                    icon: const Icon(Icons.person),
                    color: pro == 3
                        ? const Color(0xffffecc7)
                        : Colors.transparent),
              ],
            ),
          );
        }
  }

  items({Icon? icon, Color? color}) {
    return BottomNavigationBarItem(
      icon: Container(
        height: getH(50.0),
        width: getW(50.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(getW(10.0))),
        child: icon,
      ),
      label: '',
    );
  }

