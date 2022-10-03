import 'package:flutter/material.dart';

class CourseMaterial extends StatelessWidget {
  const CourseMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Material'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 123, 17, 17),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Select a course to view related files',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(),
            Course(coursetitle: "Econ 152 ELEMENTS OF ECONOMICS II"),
            Course(coursetitle: "CSM 158 PROGRAMMING WITH C++"),
            Course(coursetitle: "Math 162 INTRODUCTION PURE MATHEMATICS"),
            Course(
                coursetitle:
                    "MATH 166 INTRODUCTION TO PROBABILITY AND STATISTICS"),
            Course(coursetitle: "CSM 166 DISCRETE MATHEMATICS"),
            Course(coursetitle: "CSM 152 INFORMATION TECHNOLOGY II"),
            Course(coursetitle: "CSM 166 DISCRETE MATHEMATICS II"),
            Course(coursetitle: "COMUNICATION SKILLS"),
          ],
        ),
      ),
    );
  }
}

class Course extends StatelessWidget {
  const Course({Key? key, required this.coursetitle}) : super(key: key);
  final coursetitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            coursetitle,
            style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 49, 47, 47),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: Text('2020/2021 Second Semester, Year 1'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
