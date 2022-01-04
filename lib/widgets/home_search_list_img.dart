import 'package:resort_exam/constants/export.dart';
import 'package:resort_exam/screens/hotel_page.dart';

homeSearchListImg(context,{img}) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HotelPage()));
        },
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 6),
              height: getH(124.0),
              width: getW(195.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        img)),
              ),
              child: Container(
                height: getH(118.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      tileMode: TileMode.clamp,
                      colors: [Colors.black45, Colors.transparent]),
                ),
              ),
            ),
            Positioned(
              bottom: getH(100.0),
              right: 0,
              child: SizedBox(
                height: getH(25.0),
                child: Chip(
                  padding: EdgeInsets.only(bottom: getH(8.0)),
                  backgroundColor: Colors.orange.shade300,
                  label: Row(
                    children: [
                      Text(
                        '4.5 ',
                        style: TextStyle(
                          fontSize: getFont(12.0),
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        size: 14.0,
                        color: Colors.grey.shade300,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: 30.0,
                bottom: 8.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beach Resort Lux",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getFont(16.0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      );
    },
    itemCount: 3,
  );
}
