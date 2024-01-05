import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color topColor = Colors.black87;
  Color midColor = Colors.blue;
  Color bottomColor = Colors.black87;

  var colorList = [
    Colors.red,
    Colors.pink,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.white,
    Colors.purple,
    Colors.amber,
    Colors.black,
    Colors.indigo,
    Colors.cyan,
  ];

  var index = 0;
  
  final Uri _facebook = Uri.parse(
      "https://www.facebook.com/profile.php?id=61553029262226"
  );
  final Uri _instagram = Uri.parse(
      "https://www.instagram.com/mwahhabmirzavectorlabs/"
  );
  final Uri _youtube = Uri.parse(
      "https://www.youtube.com/@MWahhabMirza-VectorLabsF-eq8qc"
  );
  final Uri _linkedin = Uri.parse(
      "https://www.linkedin.com/company/vector-labz-fze-llc"
  );
  final Uri _twitter = Uri.parse(
      "https://twitter.com/m_llc30189"
  );
  final Uri _email = Uri.parse(
      "mailto:wahhab_mirza@vectorlabzlimited.com"
  );
  final Uri _github = Uri.parse(
      "https://github.com/MWahhabMirzaVectorLabsFZELLC"
  );

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(
            seconds: 2
        ),
        () {
          setState(() {
            topColor = Colors.pink;
          });
        }
    );
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                  child: AnimatedContainer(
                    width: double.infinity,
                    duration: Duration(seconds: 1),
                    onEnd: (){
                      setState(() {
                        index++;
                        topColor = colorList[index % colorList.length];
                      });
                    },
                    decoration: BoxDecoration(
                      color: topColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/logo.jpg",
                            width: 150,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Vector Labz FZE LLC",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Unity3D | Blender | Flutter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        Text(
                          "ASO | Android | iOS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: midColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Row(
                    children: [
                      Image.asset(
                        "assets/avatar.png",
                        height: 200,
                        width: 200,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "'Hire The Right",
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Software Developers'",
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Start Working With Us!",
                            style: TextStyle(
                              fontSize: 25
                            ),
                          )
                        ],
                      )
                      ]
                    ),
                  )
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: bottomColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.link,
                              color: Colors.amber.shade900,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "GET IN TOUCH",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: (){
                                  launchUrl(_facebook);
                                },
                                icon: Image.asset(
                                  "assets/facebook.png",
                                  height: 38,
                                  width: 38,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_instagram);
                                },
                                icon: Image.asset(
                                  "assets/instagram.png",
                                  height: 30,
                                  width: 30,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_youtube);
                                },
                                icon: Image.asset(
                                  "assets/youtube.png",
                                  height: 40,
                                  width: 40,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_linkedin);
                                },
                                icon: Image.asset(
                                  "assets/linkedin.png",
                                  height: 50,
                                  width: 50,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_twitter);
                                },
                                icon: Image.asset(
                                  "assets/twitter.png",
                                  color: Colors.white,
                                  height: 25,
                                  width: 25,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_email);
                                },
                                icon: Image.asset(
                                  "assets/email.png",
                                  height: 35,
                                  width: 35,
                                )
                            ),
                            IconButton(
                                onPressed: (){
                                  launchUrl(_github);
                                },
                                icon: Image.asset(
                                  "assets/github.png",
                                  color: Colors.blue,
                                  height: 30,
                                  width: 30,
                                )
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
