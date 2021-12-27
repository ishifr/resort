import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/widgets/home_search_list_img.dart';

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
                    trailing: const Text(
                      'Map',
                      style: TextStyle(fontSize: 16.0),
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
                      homeSearchListImg(context)
                    ]),
              ),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
