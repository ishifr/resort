import 'package:resort_exam/constants/export.dart';

searchListLarge(context) {
  List imgs = [
    'https://images.unsplash.com/photo-1610641818989-c2051b5e2cfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1586611292717-f828b167408c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    'https://images.unsplash.com/photo-1596178065887-1198b6148b2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  Size size = MediaQuery.of(context).size;
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
                        fit: BoxFit.cover, image: NetworkImage(imgs[index])),
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
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Somewhere, 0.7 km from center',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        'Ocean View 1 king Bed\nNo prepayment',
                        style: TextStyle(
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
            child:const Text(
                        '\$720',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),),
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
    itemCount: 3,
  );
}
