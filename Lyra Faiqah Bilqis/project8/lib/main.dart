// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// late List<CameraDescription> _cameras;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   _cameras = await availableCameras();
//   runApp(const CameraApp());
// }

// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({super.key});

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(_cameras[0], ResolutionPreset.max);
//     controller
//         .initialize()
//         .then((_) {
//           if (!mounted) {
//             return;
//           }
//           setState(() {});
//         })
//         .catchError((Object e) {
//           if (e is CameraException) {
//             switch (e.code) {
//               case 'CameraAccessDenied':
//                 // Handle access errors here.
//                 break;
//               default:
//                 // Handle other errors here.
//                 break;
//             }
//           }
//         });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(home: CameraPreview(controller));
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:permission_handler/permission_handler.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } catch (e) {
    // handle
    cameras = [];
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Preview Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const CameraHomePage(),
    );
  }
}

class CameraHomePage extends StatefulWidget {
  const CameraHomePage({super.key});
  @override
  State<CameraHomePage> createState() => _CameraHomePageState();
}

class _CameraHomePageState extends State<CameraHomePage> with WidgetsBindingObserver {
  CameraController? _controller;
  int _cameraIndex = 0;
  bool _isRecording = false;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initPermissionsAndCamera();
  }

  Future<void> _initPermissionsAndCamera() async {
    // minta permission (optional)
    await Permission.camera.request();

    if (cameras.isEmpty) {
      setState(() => _isInitialized = false);
      return;
    }
    _initializeCameraController(_cameraIndex);
  }

  Future<void> _initializeCameraController(int index) async {
    try {
      final cam = cameras[index];
      final controller = CameraController(
        cam,
        ResolutionPreset.high,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );

      await controller.initialize();
      if (!mounted) return;
      setState(() {
        _controller = controller;
        _isInitialized = controller.value.isInitialized;
      });
    } catch (e) {
      debugPrint('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  // handle app lifecycle to pause/resume camera
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;

    if (state == AppLifecycleState.inactive) {
      controller.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCameraController(_cameraIndex);
    }
  }

  Future<void> _switchCamera() async {
    if (cameras.length < 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Hanya satu kamera tersedia')),
      );
      return;
    }
    _cameraIndex = (_cameraIndex + 1) % cameras.length;
    await _controller?.dispose();
    await _initializeCameraController(_cameraIndex);
  }

  Future<void> _takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    try {
      final XFile raw = await _controller!.takePicture();

      // dapatkan direktori aplikasi untuk menyimpan gambar
      final Directory appDir = await getApplicationDocumentsDirectory();
      final String dirPath = p.join(appDir.path, 'Pictures');
      await Directory(dirPath).create(recursive: true);

      final String fileName = 'photo_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final String savedPath = p.join(dirPath, fileName);

      // copy file ke direktori app
      final File savedFile = await File(raw.path).copy(savedPath);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Foto disimpan: ${savedFile.path}')),
      );
    } catch (e) {
      debugPrint('Error taking picture: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengambil foto: $e')),
      );
    }
  }

  Widget _buildCameraPreview() {
    if (!_isInitialized || _controller == null) {
      return const Center(child: Text('Kamera belum siap'));
    }
    return AspectRatio(
      aspectRatio: _controller!.value.aspectRatio,
      child: CameraPreview(_controller!),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasMultiple = cameras.length > 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera Preview & Capture'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Center(child: _buildCameraPreview()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: _isInitialized ? _takePicture : null,
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Ambil Foto'),
                ),
                Row(
                  children: [
                    if (hasMultiple)
                      ElevatedButton.icon(
                        onPressed: _switchCamera,
                        icon: const Icon(Icons.switch_camera),
                        label: const Text('Ganti Kamera'),
                      ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: () async {
                        // buka folder lokasi gambar (opsional)
                        final Directory appDir = await getApplicationDocumentsDirectory();
                        final String dirPath = p.join(appDir.path, 'Pictures');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Folder gambar: $dirPath')),
                        );
                      },
                      icon: const Icon(Icons.folder_open),
                      label: const Text('Lihat Lokasi'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
