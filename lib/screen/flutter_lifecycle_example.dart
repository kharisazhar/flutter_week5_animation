import 'package:flutter/material.dart';
import 'package:flutter_week5_animation/screen/gallery/gallery_detail.dart';

class FlutterLifeCycleExample extends StatefulWidget {
  const FlutterLifeCycleExample({Key? key}) : super(key: key);

  @override
  State<FlutterLifeCycleExample> createState() {
    debugPrint("createState");
    return _FlutterLifeCycleExampleState();
  }
}

class _FlutterLifeCycleExampleState extends State<FlutterLifeCycleExample> {
  @override
  void initState() {
    super.initState();
    debugPrint("initState");

    /// Controller
    /// Listener
    /// Streamer
    /// Timer.period
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Lifecycler"),
      ),
      body: Column(
        children: [
          const Text("Lifecycle 101"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_) => const GalleryDetail(
                        imageUrl:
                            'https://fastly.picsum.photos/id/1/200/300.jpg?hmac=jH5bDkLr6Tgy3oAg5khKCHeunZMHq0ehBZr6vGifPLY')));
              },
              child: const Text("NAVIGATE"))
        ],
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);

    /// Untuk Update Widget
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("deactivate");

    /// Halaman tidak active di layar
    /// Navigator.pushReplacement()
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("dispose");

    /// Navigator.pushReplacement()
    /// Halaman tidak active di layar
    /// Stop Suatu Proses
    /// Timer.dispose();
    /// Stream.dispose();
  }
}
