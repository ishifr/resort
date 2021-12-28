
import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/screens/home_search_map.dart';
import 'package:resort_exam/widgets/home_search_list_img.dart';
import 'package:resort_exam/widgets/search_list_large.dart';

class HomeSearchList extends StatelessWidget {
  const HomeSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics:const ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: getH(55.0),
                child: const ListTile(
                  title: Text(
                    'City, Country-2 guests - Jan (18-23)',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ),
              Container(
                  height: getH(55.0),
                  color: Colors.grey[100],
                  child: ListTile(
                    leading: Icon(
                      Icons.filter_alt,
                      color: Colors.grey.shade400,
                    ),
                    title: const Text(
                      'Filter',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeSearchMap()));
                      },
                      child:const Text(
                        'Map',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  )),
              const Divider(
                height: 0.0,
                thickness: 1.0,
              ),
              Container(
                height: getH(245.0),
                padding: const EdgeInsets.only(bottom: 38.0),
                color: Colors.grey[100],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 28.0, left: 21.0, bottom: 18.0),
                        child: Text(
                          'Near the beaches',
                          style: TextStyle(
                            fontSize: getFont(22.0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getH(125.0),
                        child:homeSearchListImg(context),
                      ),
                    ]),
              ),
              Container(
                alignment: Alignment.center,
                height: getH(315.0 * 3),
                width: size.width,
                color: Colors.grey[200],
                padding: const EdgeInsets.all(18.0),
                child: searchListLarge(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
