
import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/screens/rooms_page.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                height: getH(225.0),
                width: size.width,
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://images.unsplash.com/photo-1571003123771-bd6a099dd83a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'),
              ),
              Padding(
                padding: EdgeInsets.only(top: getH(225.0)),
                child: Row(
                  children: [
                    oneOfthree(
                        img:
                            'https://images.unsplash.com/flagged/photo-1570209432247-1bb8b87a7bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80'),
                    oneOfthree(
                        img:
                            'https://images.unsplash.com/photo-1561501900-3701fa6a0864?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    oneOfthree(
                        img:
                            'https://images.unsplash.com/photo-1606402179428-a57976d71fa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80')
                  ],
                ),
              ),
              Positioned(
                  left: getW(25.0),
                  right: getW(25.0),
                  top: getH(32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                  top: getH(252.0),
                  right: getW(50.0),
                  child: Text(
                    "+25",
                    style: TextStyle(color: Colors.grey[100], fontSize: 20.0),
                  )),
            ],
          ),
          ListTile(
            title: Text(
              "Beach Resort Lux",
              style: TextStyle(
                fontSize: getFont(26.0),
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Chip(
                padding: EdgeInsets.zero,
                backgroundColor: Colors.orange.shade200,
                label: SizedBox(
                  width: getW(45.0),
                  child: Row(
                    children: [
                     const Text(
                        '4.5 ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey.shade200,size: getW(20.0),
                      )
                    ],
                  ),
                )),
          ),
          Stack(
            children: [
              Image(
                  fit: BoxFit.fitWidth,
                  width: size.width,
                  height: getH(182.0),
                  image: const AssetImage("assets/map_screen.png")),
              Positioned(
                  top: getH(44.0),
                  left: getW(74.0),
                  child: CircleAvatar(
                    radius: getW(21.0),
                    child: Text(
                      "H",
                      style: TextStyle(
                        fontSize: getFont(26.0),
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    backgroundColor: Colors.orange.shade300,
                  )),
            ],
          ),
          SizedBox(
            height: getH(20.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getW(20.0)),
            child: ListTile(
              leading: Container(
                height: getH(44.0),
                width: getW(42.0),
                decoration: BoxDecoration(
                    color: Colors.amber[100],
                    borderRadius: BorderRadius.circular(getW(12.0))),
                child: Icon(
                  Icons.location_on,
                  color: Colors.orange.shade300,
                ),
              ),
              title: Text(
                "Somewhere, HI 123343,City",
                style: TextStyle(
                  fontSize: getFont(19.0),
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getW(20.0), right: getW(20.0), bottom: getH(15.0)),
            child: ListTile(
              leading: Container(
                height: getH(44.0),
                width: getW(42.0),
                decoration: BoxDecoration(
                    color: Colors.amber[100],
                    borderRadius: BorderRadius.circular(getW(12.0))),
                child: Icon(
                  Icons.directions_walk_outlined,
                  color: Colors.orange.shade300,
                ),
              ),
              title: Text(
                "3.4 miles from center",
                style: TextStyle(
                  fontSize: getFont(19.0),
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RoomsPage()));
            },
            child: Ink(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xffF8A170), Color(0xffFFCD61)]),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Select rooms',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0)),
              fixedSize: Size(getW(360.0), getH(70.0)),
            ),
          )
        ],
      ),
    );
  }

  Expanded oneOfthree({img}) {
    return Expanded(
      child: Image(
        height: getH(80.0),
        fit: BoxFit.cover,
        image: NetworkImage(img),
      ),
    );
  }
}
