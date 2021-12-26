

import 'package:resort_exam/constants/export.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ChangeHomeProvider()),
      ChangeNotifierProvider(create: (context) => HomeDropDownProviderTop()),
      ChangeNotifierProvider(create: (context) => HomeDropDownProviderBottom()),
    ],
    child:const MyApp(),
    )
  ); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resort',
      home: AllPages(),
    );
  }
}
