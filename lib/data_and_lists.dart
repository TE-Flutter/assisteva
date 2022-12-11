import 'package:flutter/material.dart';

import 'main.dart';
import 'home_screen.dart';

/// DATA >>>>>>>>>>>>>>>>>>
///
///

class Category {
  final String categoryname;
  final List<Course> courses;

  const Category({required this.categoryname, required this.courses});
}

class Course {
  final String title;
  final String instructorName;
  final num rating;
  final String description;
  final List<Lesson> lessons;

  const Course({
    required this.title,
    required this.instructorName,
    required this.rating,
    this.description = 'Some description',
    required this.lessons,
  });
}

class Lesson {
  final String lessonname;
  final String duration;

  const Lesson({
    required this.lessonname,
    required this.duration,
  });
}

////______________NEW DATAAA_____________________///
///COLLABSE
const List<Category> categories = [
  Category(
    categoryname: 'School Curriculum',
    courses: [
      Course(
        title: 'Screen Readers for The Visually Imparied',
        instructorName: 'Adam El Anwer',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "15 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 5", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Braille 102',
        instructorName: 'Ashraf Adam',
        rating: 4.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Grade 1 English',
        instructorName: 'Mark Downey',
        rating: 3.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Grade 2 Math',
        instructorName: 'Mark Downey',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Grade 3 Chemistry',
        instructorName: 'Downey Mark',
        rating: 3.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Grade 4 Biology',
        instructorName: 'Downey Mark',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "15 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 5", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
    ],
  ),
  Category(
    categoryname: 'IT & Software',
    courses: [
      Course(
        title: 'Microsoft Word for The Visually Imparied',
        instructorName: 'Adam El Anwer',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "15 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 5", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'Windows 11',
        instructorName: 'Ashraf Adam',
        rating: 4.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
    ],
  ),
  Category(
    categoryname: 'Lifestyle',
    courses: [
      Course(
        title: 'How to use the Stove',
        instructorName: 'Mariam Noah',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "15 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 5", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'How to Do Laundry',
        instructorName: 'Mariam Noah',
        rating: 4.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "8 Minutes"),
          Lesson(lessonname: "Lesson 4", duration: "10 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
    ],
  ),
  Category(
    categoryname: 'Music & Art',
    courses: [
      Course(
        title: 'How to Play the Piano',
        instructorName: 'Mariam Noah',
        rating: 5.0,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "15 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
      Course(
        title: 'How to Do Play the Keyboard',
        instructorName: 'Noah Mariam',
        rating: 4.5,
        description: 'Do you want grade A+? ust follow this course',
        lessons: [
          Lesson(lessonname: "Lesson 1", duration: "10 Minutes"),
          Lesson(lessonname: "Lesson 2", duration: "12 Minutes"),
          Lesson(lessonname: "Lesson 3", duration: "8 Minutes"),
          Lesson(lessonname: "Final Lesson", duration: "20 Minutes"),
        ],
      ),
    ],
  )
];

/// TEST////////////
final List<Map> myProducts =
    List.generate(100, (index) => {"id": index, "name": "Product $index"})
        .toList();

////// Categories List FOR GRID//////////
final List<Map> mycategory = List.generate(
    7,
    (index) => {
          "id": index,
          "name": "Category $index",
        }).toList();

final List<Map> mycourse = List.generate(
    50,
    (index) => {
          "id": index,
          "name": "Course $index",
          "instructor": "Adam",
        }).toList();

/////////////Lists + Views//////////////

///////Courses Gallery View/////
class Categoryview1 extends StatelessWidget {
  Categoryview1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // implement GridView.builder
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: categories.length,
          itemBuilder: (BuildContext ctx, index) {
            Category category = categories[index];

            return InkWell(
              onTap: () => gotoCoursesListMockScreen(context),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 85, 231),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category.categoryname,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text("15 Courses"),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
