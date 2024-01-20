import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 240, 228),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 73, 69, 60),
        elevation: 20,
        title: Text(
          "Portfolio",
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/girl.jpg"),
            ),
          ),
          // Spacing
          // const SizedBox(
          //   height: 10,
          // ),
          const Text(
            'Sonam Kumari',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          //Spacing
          const SizedBox(
            height:20,
          ),

          //Resume
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://drive.google.com/file/d/1grDJXGnynpROXQWvMaTleKT4PC0yXz3F/view?usp=drivesdk');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.file_copy_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Resume",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //LinkedIn
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.linkedin.com/in/sonam-kumari-084641257/');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "LinkedIn",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //GitHub
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://github.com/SonamKumari29');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "GitHub",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //Leetcode
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://leetcode.com/sonamkumari_9/');

              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.code,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Leetcode",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          
          //twitter
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://twitter.com/that_textrovert');
    _launchUrl(url);
              
            },
            
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Twitter",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing

          const SizedBox(
            height: 10,
          ),

          //blogs
          GestureDetector(

            onTap: () {
              Navigator.pushNamed(context, 'blogs_page');
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 73, 69, 60),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.article,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Blogs",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
//Spacing
          const SizedBox(
            height: 10,
          ),
          //Projects
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'projects_page');
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 69, 60),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.file,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
