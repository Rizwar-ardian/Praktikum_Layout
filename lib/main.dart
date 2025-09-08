import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rizwar Ardian_2077',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selamat Datang'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/Djawatan.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

///  Bagian Title
Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Djawatan Forest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const Text(
              'Banyuwangi, Indonesia',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const Text('41'),
    ],
  ),
);

///  Bagian Tombol (CALL, ROUTE, SHARE)
Widget buttonSection = Container(
  padding: const EdgeInsets.symmetric(vertical: 16),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.call, 'CALL'),
      _buildButtonColumn(Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Icons.share, 'SHARE'),
    ],
  ),
);

Column _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

///  Bagian Deskripsi
Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Djawatan adalah destinasi wisata hutan di Benculuk, Cluring, Banyuwangi, Jawa Timur, yang terkenal dengan pohon-pohon trembesi raksasa berusia ratusan tahun dan ditumbuhi epifit, menciptakan suasana magis seperti di negeri dongeng. '
    'Tempat ini menawarkan udara sejuk, banyak spot foto Instagrammable, serta wahana seperti naik kuda dan andong. '
    'Dulunya merupakan tempat penyimpanan kayu milik Perhutani dan jalur kereta api, kini Djawatan dikelola oleh Perhutani sebagai kawasan wisata alam. '
    'Djawatan buka setiap hari dari pagi hingga sore, dengan tiket masuk terjangkau. '
    'Pengunjung dapat menikmati keindahan alam, berfoto di bawah kanopi hijau, dan merasakan ketenangan di tengah hutan yang asri.',
    softWrap: true,
  ),
);