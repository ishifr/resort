import 'package:resort_exam/constants/export.dart';

roomMainWidget(context) {
  List imgs = [
    'https://images.unsplash.com/photo-1610641818989-c2051b5e2cfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1586611292717-f828b167408c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    'https://images.unsplash.com/photo-1596178065887-1198b6148b2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  Size size = MediaQuery.of(context).size;
  return ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Container(
            margin:  EdgeInsets.only(bottom: getH(18.0),left: getW(20.0)),
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
                  height: getH(300.0),
                  width: getW(338.0),
                  padding: EdgeInsets.all(getW(14.0)),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(17.0)),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                        'Standard King Room',
                        style: TextStyle(
                          fontSize: getFont(22.0),
                          fontWeight: FontWeight.w600,
                        ),
                        
                      ),
                      trailing: Icon(Icons.info,color: Colors.orange.shade300,),
                      ),
                      row(icon: Icons.price_check_outlined,text: 'Refundable'),
                      row(icon: Icons.free_breakfast,text: 'Breakfast included'),
                      row(icon: Icons.wifi,text: 'Wi-Fi'),
                      row(icon: Icons.air_outlined,text: 'Air Conditioner'),
                      row(icon: Icons.bathtub_outlined,text: 'Bath'),
                      Row(),
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
          
          
          
        ],
      );
    },
    itemCount: 3,
  );
}

row({icon,text}){
  return Container(
    padding: EdgeInsets.only(bottom: getH(3.0)),
    width: getW(220.0),
    child: Row(
      children: [
        Icon(icon,color: Colors.grey.shade400,),
        SizedBox(width: getW(10.0),),
        Text(text,style: TextStyle(fontSize: getFont(14.0),color: Colors.grey.shade500),)
      ],
    ),
  );
}