import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Günlük Rapor'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/1.gif'),
                Text('Merhaba; bugün yapmanız gereken bir ödeme bulunmuyor. Kredi kartınızın hesap kesim tarihine dört ( 4 ) gün kaldı. Son 3 ay içerisinde asgari ödeme koşulunu eksiksiz yerine getirdiniz.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,


                  ),

                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const Text('Rapor Detayı'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Rapor Detayı"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Geri Dönün'),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}