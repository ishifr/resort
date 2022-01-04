import 'package:resort_exam/constants/export.dart';

homePageListView(context, {img, price}) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    height: getH(186.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              height: getH(180.0),
              width: getW(265.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(img)),
              ),
              child: Container(
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
                left: 38.0,
                bottom: 18.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best Resort",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getFont(18.0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: getH(12.0),
                    ),
                    Row(
                      children:  [
                        Text(
                          "Dubai",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding:const EdgeInsets.only(left: 90.0, right: 24.0),
                          child: Text(
                            "\$ ${price}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          "4.9 ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 18.0,
                        )
                      ],
                    ),
                  ],
                )),
          ],
        );
      },
      itemCount: 2,
    ),
  );
}
