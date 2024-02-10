import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void openCamera(BuildContext context) async {
  final cameras = await availableCameras(); // Get available cameras
  final firstCamera = cameras.first; // Use the first camera

  // Navigate to a new screen with the camera preview
  await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CameraScreen(camera: firstCamera),
    ),
  );
}

class CameraScreen extends StatelessWidget {
  final CameraDescription camera;

  const CameraScreen({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Screen'),
      ),
      body: Center(
        child: Text('Camera preview goes here'), // Placeholder for camera preview
      ),
    );
  }
}
