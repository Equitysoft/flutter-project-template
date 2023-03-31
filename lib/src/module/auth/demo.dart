import 'package:template/src_exports.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State Demo")),
      body: GetBuilder<DemoController>(
        init: DemoController(),
        builder: (controller) {
          if (!controller.isSuccess) return controller.view;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center
              ,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.loadingState();
                  },
                  child: const Text("Loading"),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.faildState();
                  },
                  child: const Text("Failed"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DemoController extends BaseController {
  Future<void> loadingState() async {
    onUpdate(status: Status.LOADING);
    await Future.delayed(const Duration(seconds: 2));
    onUpdate(status: Status.SCUSSESS);
  }

  Future<void> faildState() async {
    onUpdate(status: Status.LOADING);
    await Future.delayed(const Duration(seconds: 2));
    onUpdate(
        status: Status.FAILED,
        message: "Something Want Wrong",
        callback: (){
          onUpdate(status: Status.SCUSSESS);
        });
  }
}
