
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:permission_handler/permission_handler.dart';

class QiblaCompass extends StatefulWidget {
  const QiblaCompass({super.key});
  static String id = 'qibla';

  @override
  State<QiblaCompass> createState() => _QiblaCompassState();
}

class _QiblaCompassState extends State<QiblaCompass> {
  bool _hasPermission = false;

  Future<void> requestLocationPermission() async {
    final status = await Permission.locationWhenInUse.request();
    if (status.isGranted) {
      setState(() {
        _hasPermission = true;
      });
    } else {
      setState(() {
        _hasPermission = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    requestLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, size: 35),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Qibla Direction',
          style: TextStyle(fontSize: 30),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff161853),
      ),
      body: Container(
        color: const Color(0xff161853),  // الخلفية الزرقاء
        child: _hasPermission
            ? FutureBuilder<bool?>(
                future: FlutterQiblah.androidDeviceSensorSupport(),
                builder: (context, AsyncSnapshot<bool?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData && snapshot.data == true) {
                    return StreamBuilder(
                      stream: FlutterQiblah.qiblahStream,
                      builder: (context, AsyncSnapshot<QiblahDirection> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        if (snapshot.hasData) {
                          final qiblahDirection = snapshot.data!;
                          final qiblahAngle = qiblahDirection.offset;

                          return Stack(
                            children: [
                              Positioned(
                                top: 120,
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Text(
                                    "Compass Angle: ${qiblahDirection.qiblah.toStringAsFixed(2)}°",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                )
                             ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                    angle: qiblahAngle,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset("assets/images/qibla.png"),
                                    ),
                                  ),
                                ),
                              ),
                             
                            ],
                          );
                        } else {
                          return const Center(
                            child: Text(
                              "لا يمكن تحديد القبلة الآن",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          );
                        }
                      },
                    );
                  } else {
                    return const Center(
                      child: Text(
                        "البوصلة غير مدعومة على جهازك",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    );
                  }
                },
              )
            : const Center(
                child: Text(
                  "يجب منح إذن الوصول للموقع لتحديد القبلة",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
