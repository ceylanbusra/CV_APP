import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: CvApp(),
    debugShowCheckedModeBanner: false,
  ));
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}

class CvApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          customLaunch('ceylanbusra1999@gmail.com');
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.email),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.deepPurple[200],
                width: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "Assets/images/profil.jpeg",
                          width: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Döndü Büşra Ceylan",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Necmettin Erbakan Üniversitesi",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.deepPurple[300],
                width: 400,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("ABOUT ME",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Necmettin Erbakan Üniversitesi'nde 3. sınıf öğrencisiyim. Şu anda flutter ile mobil uygulama geliştirme öğrenmekteyim. İlgimin de bu yönde olduğunu keşfettim. Bu sebeple yaz stajımı mobil programlama üzerine  react native üzerinden yaptım.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.deepPurple[400],
                width: 400,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("SKILLS",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  Java",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.none,
                                )),
                            FAProgressBar(
                              currentValue: 80,
                              displayText: '%',
                              borderRadius: 15,
                              backgroundColor: Colors.white70,
                              animatedDuration: Duration(milliseconds: 500),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  Pyhton",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.none,
                                )),
                            FAProgressBar(
                              currentValue: 40,
                              displayText: '%',
                              borderRadius: 15,
                              backgroundColor: Colors.white70,
                              animatedDuration: Duration(milliseconds: 500),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  C dili",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.none,
                                )),
                            FAProgressBar(
                              currentValue: 60,
                              displayText: '%',
                              borderRadius: 15,
                              backgroundColor: Colors.white70,
                              animatedDuration: Duration(milliseconds: 500),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  C# dili",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.none,
                                )),
                            FAProgressBar(
                              currentValue: 20,
                              displayText: '%',
                              borderRadius: 15,
                              backgroundColor: Colors.white70,
                              animatedDuration: Duration(milliseconds: 500),
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("  C++ dili",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.none,
                                )),
                            FAProgressBar(
                              currentValue: 5,
                              displayText: '%',
                              borderRadius: 15,
                              backgroundColor: Colors.white70,
                              animatedDuration: Duration(milliseconds: 500),
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
