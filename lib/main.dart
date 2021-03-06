import 'package:resort_exam/constants/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      title: 'Resort',
      home:  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ChangeHomeProvider(),)
        ],
        child: AllPages()),
      
    );
  }
}
