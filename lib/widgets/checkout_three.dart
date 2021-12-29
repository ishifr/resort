import 'package:resort_exam/constants/export.dart';

checkOutThree(context) {
  List imgs = [
    'https://images.unsplash.com/photo-1610641818989-c2051b5e2cfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  Size size = MediaQuery.of(context).size;
  return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 18.0),
            child: Column(
              children: [
                Container(
                  height: getH(201.0),
                  width: getW(338.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imgs[0])),
                  ),
                  child: Container(
                    height: getH(201.0),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.circular(20.0)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.clamp,
                          colors: [Colors.black45, Colors.transparent]),
                    ),
                  ),
                ),
               
              ],
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
            bottom: getH(35.0),
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
              bottom: getH(35.0),
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
}
