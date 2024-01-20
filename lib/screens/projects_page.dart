import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Projects",
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Color.fromARGB(255, 73, 69, 60),
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Row(
                children: [
                  // First Project
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: buildProjectCard("Project 1"),
                      back: buildProjectCardWithLink(
                        "LearnWithLogic",
                        "UI-UX (prototype) of an educational platform ",
                        "https://www.figma.com/proto/HRxAeYCeeoQI5gZUlX337r/Untitled?node-id=44-8&viewport=341%2C260%2C0.11&scaling=scale-down&starting-point-node-id=44%3A32",
                      ),
                      speed: 600,
                    ),
                  ),
                  // Second Project
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: buildProjectCard("Project 2"),
                      back: buildProjectCardWithLink(
                        "My Notes App",
                        "Using HTML,CSS & Js [Add,Delete,Save notes].",
                        "https://github.com/SonamKumari29/My-Notes-App",
                      ),
                      speed: 600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildProjectCard(String projectName) {
    return Container(
      height: 200,
      width: 150,
      color:Color.fromARGB(255, 213, 178, 97),
      child: Center(child: Text(projectName)),
    );
  }

  Widget buildProjectCardWithLink(
      String projectName, String projectDescription, String projectLink) {
    return Container(
      height: 200,
      width: 150,
      color: Color.fromARGB(255, 190, 162, 96),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              projectName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              projectDescription,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Open the project link
                // You can use a package like url_launcher to open the link
              },
              child: Text(
                "Project Link",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
