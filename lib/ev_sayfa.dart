import 'package:flutter/material.dart';

class EvSayfasi extends StatefulWidget {
  const EvSayfasi({Key? key}) : super(key: key);

  @override
  State<EvSayfasi> createState() => _EvSayfasiState();
}

class _EvSayfasiState extends State<EvSayfasi> {
  final TextEditingController birinciController = TextEditingController();
  final TextEditingController ikinciController = TextEditingController();
  double sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Makinesi Uygulaması'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        // color: Colors.amber,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: birinciController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Birinci Sayı'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: ikinciController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'İkinci Sayı'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(birinciController.text);
                    double b = double.parse(ikinciController.text);

                    setState(() {
                      sonuc = a + b;
                    });
                  },
                  child: const Text('Toplama'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(birinciController.text);
                    double b = double.parse(ikinciController.text);

                    setState(() {
                      sonuc = a - b;
                    });
                  },
                  child: const Text('Çıkarma'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(birinciController.text);
                    double b = double.parse(ikinciController.text);

                    setState(() {
                      sonuc = a * b;
                    });
                  },
                  child: const Text('Çarpma'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(birinciController.text);
                    double b = double.parse(ikinciController.text);

                    setState(() {
                      sonuc = a / b;
                    });
                  },
                  child: const Text('Bölme'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Sonuc: $sonuc',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
