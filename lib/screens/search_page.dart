import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/models/resort_model.dart';
import 'package:resort_exam/service/resort_service.dart';
import 'package:resort_exam/widgets/search_page_listview.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FutureBuilder(
          future: ResortService().getResort(),
          builder: (context, AsyncSnapshot<List<ResortData>> snap) {
            if (!snap.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snap.hasError) {
              return const Center(
                child: Text("Snap has error!!!"),
              );
            } else {
              return Column(
                children: [
                  textFields(
                      hint: 'Search for a city, area, or a hotel',
                      controller: _controller),
                  Container(
                    margin: EdgeInsets.only(top: getH(15.0)),
                    height: getH(302.0),
                    width: size.width,
                    color: Colors.amber[50],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getW(20.0),
                              top: getH(25.0),
                              bottom: getH(18.0)),
                          child: Text(
                            'Recommended',
                            style: TextStyle(
                                fontSize: getFont(22.0),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        searchPageListView(context,
                            img: snap.data![0].beachImg,
                            price: snap.data![0].roomPrice)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: getH(15.0)),
                    height: getH(302.0),
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getW(20.0),
                              top: getH(25.0),
                              bottom: getH(18.0)),
                          child: Text(
                            'Deals',
                            style: TextStyle(
                                fontSize: getFont(22.0),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        searchPageListView(context,
                            img: snap.data![0].beachImg,
                            price: snap.data![0].roomPrice)
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  textFields({hint, controller}) {
    return Container(
      height: getH(50.0),
      margin: EdgeInsets.symmetric(vertical: getH(18.0)),
      padding: EdgeInsets.symmetric(horizontal: getW(20.0)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
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
