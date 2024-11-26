import 'package:flutter/material.dart';

class RideTrackingScreen extends StatelessWidget {
  const RideTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 291,
        width: 335,
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Driver Info
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/driver_photo.png'),
                      radius: 24,
                    ),
                    Positioned(
                        top: 35,
                        left: 15,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 8,
                              ),
                              Text(
                                "4.2",
                                style: TextStyle(fontSize: 8),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Joseph Kony', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      'He has completed 342,43 trips',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/chat_icon.png",
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/call_icon.png",
                        width: 20,
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // Car Info
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: Image.asset(
                      "assets/img_4.png",
                      width: 30,
                      height: 20,
                    )),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Toyota Camry'),
                    Text(
                      'No, 346GHM - Color, White',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 87,
                    height: 32,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0C572C),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                        child: Text(
                      'EAT 10 min',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade100,
            ),
            // Location Details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 8,
                    ),
                    Container(
                      height: 20,
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Colors.yellow,
                      size: 8,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('HCG Eko Cancer Hospital...'),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 2,
                      width: 200,
                      color: Colors.grey.shade100,
                    ),
                    const Text('City Center Salt Lake...'),
                  ],
                ),
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Update Ride Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'UPDATE RIDE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
