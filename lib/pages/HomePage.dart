import 'package:flutter/material.dart';
import 'DetailOrderPage.dart';

class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageAsset;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageAsset,
  });
}

var scheduleList = [
  Schedule(
    coverageArea: 'Suryodiningratan dan sekitarnya',
    wasteBankName: 'Bank Sampah Gemah Ripah',
    implementationDate: '2024-10-05',
    startTime: '08:00',
    endTime: '10:00',
    imageAsset: 'assets/images/bangsam1.png',
  ),
  Schedule(
    coverageArea: 'Prawirodirjan dan sekitarnya',
    wasteBankName: 'Bank Sampah Hijau Lestari',
    implementationDate: '2024-10-06',
    startTime: '09:00',
    endTime: '11:00',
    imageAsset: 'assets/images/bangsam2.png',
  ),
  Schedule(
    coverageArea: 'Mantrijeron dan sekitarnya',
    wasteBankName: 'Bank Sampah Bersih Sejahtera',
    implementationDate: '2024-10-07',
    startTime: '07:30',
    endTime: '09:30',
    imageAsset: 'assets/images/bangsam3.png',
  ),
  Schedule(
    coverageArea: 'Ngupasan dan sekitarnya',
    wasteBankName: 'Bank Sampah Asri Jaya',
    implementationDate: '2024-10-08',
    startTime: '08:30',
    endTime: '10:30',
    imageAsset: 'assets/images/bangsam4.png',
  ),
  Schedule(
    coverageArea: 'Pakuncen dan sekitarnya',
    wasteBankName: 'Bank Sampah Lestari Mandiri',
    implementationDate: '2024-10-09',
    startTime: '09:00',
    endTime: '11:00',
    imageAsset: 'assets/images/bangsam5.png',
  ),
  Schedule(
    coverageArea: 'Wirobrajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Sejahtera Abadi',
    implementationDate: '2024-10-10',
    startTime: '07:00',
    endTime: '09:00',
    imageAsset: 'assets/images/bangsam6.png',
  ),
  Schedule(
    coverageArea: 'Notoprajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Berkah',
    implementationDate: '2024-10-11',
    startTime: '08:00',
    endTime: '10:00',
    imageAsset: 'assets/images/bangsam7.jpeg',
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScheduleScreen(username: ''),
    );
  }
}

class ScheduleScreen extends StatelessWidget {
  final String username;

  const ScheduleScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180.0, // Height of the expanded header
            floating: false,
            pinned: true, // Pinned so it remains in the view when collapsed
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              titlePadding:
                  const EdgeInsets.only(bottom: 90), // Adjust title padding
              title: Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  'Selamat pagi, $username!',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              background: ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30)), // Melengkung pada sudut bawah
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/gamhome.png'), // gambar akuuuuuu
                      fit: BoxFit.cover, // Cover the entire area
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 100, left: 78, bottom: 30),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Yuk, buat perubahan positif bagi lingkungan sekarang.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Section for "Apa itu bank sampah keliling?"
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Apa itu bank sampah keliling?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Bank sampah akan hadir di dekat rumah Anda.",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the next page when clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Pelajari teknisnya lebih lanjut.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final schedule = scheduleList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Image.network(
                        schedule.imageAsset,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        schedule.wasteBankName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(schedule.coverageArea),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today, size: 16),
                              const SizedBox(width: 4),
                              Text(schedule.implementationDate),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.access_time, size: 16),
                              const SizedBox(width: 4),
                              Text(
                                  '${schedule.startTime} - ${schedule.endTime} WIB'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: scheduleList.length,
            ),
          ),
        ],
      ),
    );
  }
}
