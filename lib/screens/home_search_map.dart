import 'package:flutter/material.dart';
import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/models/resort_model.dart';
import 'package:resort_exam/service/resort_service.dart';
import 'package:resort_exam/widgets/home_search_list_img.dart';

class HomeSearchMap extends StatelessWidget {
  const HomeSearchMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
        body: SafeArea(
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
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'List view',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                            )),
                        Stack(
                          children: [
                            SizedBox(
                              height: getH(590.0),
                              width: size.width,
                              child: const Image(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/home_search_map.png')),
                            ),
                            priceChips(price: 127, top: 40.0, left: 250.0),
                            priceChips(price: 345, top: 90.0, left: 40.0),
                            priceChips(price: 378, top: 120.0, left: 270.0),
                            priceChips(price: 246, top: 200.0, left: 170.0),
                            priceChips(price: 421, top: 320.0, left: 70.0),
                            priceChips(price: 530, top: 350.0, left: 90.0),
                            Positioned(
                                top: getH(450.0),
                                bottom: getH(2.0),
                                left: 0.0,
                                right: 0.0,
                                child: SizedBox(
                                  height: getH(128.0),
                                  child: homeSearchListImg(context,
                                      img: snap.data![0].beachImg),
                                )),
                          ],
                        ),
                      ],
                    );
                  }
                  ;
                })));
  }

  Positioned priceChips({price, top, left}) {
    return Positioned(
        top: getH(top),
        left: getW(left),
        child: Chip(
            labelPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
            backgroundColor: Colors.orange.shade100,
            label: Text(
              '\$$price+',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )));
  }
}
