// ignore_for_file: library_private_types_in_public_api

import 'package:concentric_transition/page_view.dart';
// import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> pages = [
    {
      'image':
          'https://ouch-cdn2.icons8.com/qLwkLBjIt5rjnTjksT-reemr3Rc7m8fsCWCy9VwmyKY/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjcv/MjJmNTg3NWYtNTA5/Yy00ZjhmLTg0Njgt/YjUxMjkxOWExMGI4/LnBuZw.png',
    },
    {
      'image':
          'https://ouch-cdn2.icons8.com/aOecyQToTzM0aHNXxIeeu5hIHzPK6Nf6xpXAdEJtEgY/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjA2/LzBhNzFhMzg1LTQ5/YmYtNDUyNS05OWNm/LTNkOWQ1MmYxYWZh/NC5wbmc.png'
    },
    {
      'image':
          'https://ouch-cdn2.icons8.com/df0oDP28LtBPZxjK2SeUi36rz3yCwv9yVfB6S-OFT5M/rs:fit:368:368/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTE0/LzgzNjk5MTdkLWE0/N2ItNGE2NC05OGI2/LTdlMmRkYjNjMTE1/OS5wbmc.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 30,
        verticalPosition: 0.85,
        colors: const [Colors.white, Colors.greenAccent, Colors.teal],
        itemCount: pages.length,
        itemBuilder: (index) {
          return Container(
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  pages[index]['image']!,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
