import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


class CameraPage extends StatefulWidget {

  List<CameraDescription> cameras;

  CameraPage(cameras);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_){
      if(!mounted){
        print("not mounted");
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    if(controller.value.isInitialized){
      return new Container();
    }
    return new AspectRatio(
        aspectRatio: controller.value.aspectRatio,
      child: new CameraPreview(controller),
    );
  }
}

