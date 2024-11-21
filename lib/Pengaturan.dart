import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsAndActivityPage(),
    );
  }
}

class SettingsAndActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Warna latar belakang utama
      appBar: AppBar(
        backgroundColor: Color(0xFFA3BFA1), // Warna header
        title: Text(
          'Pengaturan dan Aktivitas',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Section(
              children: [
                SettingButton(text: 'Tentang kami'),
                SettingButton(text: 'Beri bintang'),
                SettingButton(text: 'Beri masukan'),
              ],
            ),
            Section(
              title: 'Sign In',
              children: [
                SettingButton(text: 'Info sign in'),
                SettingButton(text: 'Keluar'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const Section({Key? key, this.title, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFD3E0D1), // Warna latar belakang section
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                title!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ...children,
        ],
      ),
    );
  }
}

class SettingButton extends StatelessWidget {
  final String text;

  const SettingButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Color(0xFFE8F0E8), // Warna teks tombol
          elevation: 0,
          textStyle: TextStyle(fontSize: 14),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Bentuk tombol
          ),
        ),
        onPressed: () {
          // Tambahkan aksi di sini
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text),
        ),
      ),
    );
  }
}
