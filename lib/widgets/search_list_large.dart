import 'package:resort_exam/constants/export.dart';

searchListLarge(context, {img, distance, aboutRoom, price}) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 18.0),
            child: Column(
              children: [
                Container(
                  height: getH(184.0),
                  width: getW(338.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20.0)),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img)),
                  ),
                  child: Container(
                    height: getH(184.0),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.0)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.clamp,
                          colors: [Colors.black45, Colors.transparent]),
                    ),
                  ),
                ),
                Container(
                  height: getH(104.0),
                  width: getW(338.0),
                  padding: EdgeInsets.all(getW(14.0)),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(17.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        distance,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        aboutRoom,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: getW(20.0),
            bottom: getH(44.0),
            child: Text(
              '\$$price',
              style: const TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: getH(12.0),
            right: getH(25.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey[100],
            ),
          ),
          Positioned(
            bottom: getH(138.0),
            right: getW(20.0),
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
              left: getW(20.0),
              bottom: getH(138.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Beach Resort Lux",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getFont(22.0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
        ],
      );
    },
    itemCount: 1,
  );
}
