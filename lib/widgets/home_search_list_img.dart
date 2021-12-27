import 'package:resort_exam/constants/export.dart';

homeSearchListImg(context) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    height: getH(125.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0,top: 6),
              height: getH(124.0),
              width: getW(195.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHJlc29ydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60')),
              ),
              child: Container(height: getH(118.0),
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
        );
      },
      itemCount: 3,
    ),
  );
}
