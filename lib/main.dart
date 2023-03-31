import 'src_exports.dart';

void main() {
  ///use app.init() or Get.put(AppService());
  Get.put(AppService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      fallbackLocale: LocalizationService.fallbackLocale,
      locale: LocalizationService.locale,
      translations: LocalizationService(),
      initialRoute: Routes.ROOT,
      getPages: Pages.pages,
    );
  }
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(
        const Duration(seconds: 2),
        () {
          Get.offAndToNamed(Routes.DEMO);
        },
      );
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
