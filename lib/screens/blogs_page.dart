import 'package:flutter/material.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Blogs",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Color.fromARGB(255, 73, 69, 60),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
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
                  // First Blog
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: buildBlogCard(
                      "Flutter Documentation",
                      "Learn about Flutter.",
                      "https://docs.flutter.dev/",
                    ),
                  ),
                  //2nd blog
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: buildBlogCard(
                      "Github",
                      "Simplifying Version Control: A Beginner’s Guide to Git and GitHub.",
                      "https://medium.com/@allenrai1530/simplifying-version-control-a-beginners-guide-to-git-and-github-ca518a8c09c7",
                    ),
                  ),
                  // 
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: buildBlogCard(
                      "MDN Web Docs",
                      "Documenting web technologies, including CSS, HTML, and JavaScript, since 2005.",
                      "https://developer.mozilla.org/en-US/",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlogCard(String blogTitle, String blogDescription, String blogLink) {
    return Container(
      height: 200,
      width: 150,
      color: Color.fromARGB(255, 213, 178, 97),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              blogTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              blogDescription,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Open the blog link
                // You can use a package like url_launcher to open the link
              },
              child: Text(
                "Blog Link",
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
