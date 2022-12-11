// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'data_and_lists.dart';

final logoImageUrl = 'https://i.ibb.co/M6RMGpk/Group-19.png';
final UserImageUrl =
    'https://upload.wikimedia.org/wikipedia/commons/6/67/User_Avatar.png';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'TevaLearn',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: SignInScreen());
  }
}

// Text, Column, Row, Button, Navigation
// Scaffold, Center

////ROUTTTESSSS YA HAYTHAM KOLLHOM HENAAAA >>>>>>>>>>>>>
///General Go Back Button//// NOOO NEEEED
goBack(BuildContext context) {
  Navigator.of(context).pop();
}

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => goBack(context), child: Text("Go Back"));
  }
}

///////Go To Explore Screen///////
// goToExploreScreen(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => ExploreScreen(),
//     ),
//   );
// }

//////////Go To Course List Screen route>>>>>>>>
// goToCoursesListScreen(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => CoursesListScreen(),
//     ),
//   );
// }

//////////Go To course route>>>>>>>>
gotoBrailleCourseScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BrailleCourseScreen(),
    ),
  );
}

//////////Go To Account route>>>>>>>>
gotoAccountScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AccountScreen(),
    ),
  );
}

goToHomeScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HomeScreen(),
    ),
  );
}

goToSignUpScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SignUpScreen(),
    ),
  );
}

goToCoursesListScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CoursesListScreen(),
    ),
  );
}

////Dynamic ROUTE WITH DATA AND LISTS PAGE///////
void gotoDetailsScreen(BuildContext ctx, Course course) {
  Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) => CourseDetailsScreen(course: course),
    ),
  );
}

void goToCoursesListScreen2(
    BuildContext ctx, Category category, Course course) {
  Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) =>
          CoursesListScreen2(category: category, course: course),
    ),
  );
}

////// DYNAMIC Courses List Screen>>>>>>>>>
class CoursesListScreen2 extends StatelessWidget {
  final Category category;
  final Course course;

  const CoursesListScreen2(
      {super.key, required this.category, required this.course});

  void gotoDetailsScreen(BuildContext ctx, Course course) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => CoursesListScreen2(
          course: course,
          category: category,
        ),
      ),
    );
  }

  Widget buildcourse(BuildContext ctx, int index) {
    // Category category = category[index];
    // Course course = course[index];

    return ListTile(
      leading: const FlutterLogo(),
      title: Text(course.title),
      subtitle: Text(course.instructorName),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => gotoDetailsScreen(ctx, course),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses List')),
      body: ListView.builder(
        // itemCount: courses.length,
        itemBuilder: buildcourse,
      ),
    );
  }
}

class CourseDetailsScreen2 extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen2({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Taught by ${course.instructorName}'),
            Text('Rating: ${course.rating} of 5'),
            Text(course.description),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget buildItem(BuildContext ctx, int index) {
//   Category category = categories[index];

//   return ListTile(
//     leading: const FlutterLogo(),
//     title: Text(category.categoryname),
//     //subtitle: Text(courses.instructorName),
//     trailing: const Icon(Icons.chevron_right),
//     //onTap: () => gotoDetailsScreen(ctx, category),
//   );
// }

///////////// SIGN IN "LOGIN" SCREEN//////////////////
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  // int calculateSomething() {
  //   return 5 + 7;
  //   // print('5 + 7');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            children: [
              Image.network(logoImageUrl),
              SizedBox(height: 100),
              Text('Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 50),
              ElevatedButton(
                  child: Text('Sign in with Facebook'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 54, 139, 244)),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Sign in with Google'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Sign in with Apple'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  )),
              SizedBox(height: 20),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () => goToSignUpScreen(context),
                child: Text("Don't have account? Sign Up"),
              )

              // ElevatedButton(
              //     onPressed: () => print(calculateSomething()),
              //     child: Text('Calculate Something'))
            ],
          ),
        ),
      ),
    );
  }
}

///////////// SIGN Up SCREEN//////////////////
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  goToHomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  goToSignInScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            children: [
              Image.network(logoImageUrl),
              SizedBox(height: 100),
              Text('Signup',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 50),
              ElevatedButton(
                  child: Text('Sign in with Facebook'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 54, 139, 244)),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Sign up with Google'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  )),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Sign up with Apple'),
                  onPressed: () => goToHomeScreen(context),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  )),
              SizedBox(height: 20),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () => goToSignInScreen(context),
                child: Text("Do you have an account? Login"),
              )

              // ElevatedButton(
              //     onPressed: () => print(calculateSomething()),
              //     child: Text('Calculate Something'))
            ],
          ),
        ),
      ),
    );
  }
}

/////  Courses List Screen CoursesListScreen//////////
class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Braille 101 Course"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('School Curriculum'),
            ElevatedButton.icon(
                onPressed: () => gotoBrailleCourseScreen(context),
                icon: Icon(Icons.map),
                label: Text('Braille 101 Course')),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Taught by ${course.instructorName}'),
            Text('Rating: ${course.rating} of 5'),
            Text(course.description),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}

////////1st Course Screen////////////
class BrailleCourseScreen extends StatelessWidget {
  const BrailleCourseScreen({super.key});

  gotoLesson1Screen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Lesson1Screen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Braille 101"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(logoImageUrl),
            SizedBox(height: 20),
            Text(
              'Braille 101',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () => gotoLesson1Screen(context),
                child: Text("Lesson 1"))
          ],
        ),
      ),
    );
  }
}

////Lesson Screen/////
class Lesson1Screen extends StatelessWidget {
  const Lesson1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson"),
      ),
      body: Center(
        child: Column(
          children: [
            videoPlaceholder(),
            GoBackButton(),
          ],
        ),
      ),
    );
  }

  Placeholder videoPlaceholder() {
    return Placeholder(
      child: SizedBox(
        height: 100,
        child: Center(child: Text('Video')),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TevaLearn | Account')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () => goToHomeScreen(context),
                    child: Text('Explore')),
                ElevatedButton(
                    onPressed: () => gotoCoursesListMockScreen(context),
                    child: Text('My Courses')),
                ElevatedButton(onPressed: null, child: Text('Account')),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(UserImageUrl),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Haytham Hamed'),
                ElevatedButton(onPressed: () => null, child: Text('Edit')),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hello@haythamhamed.com'),
                ElevatedButton(onPressed: () => null, child: Text('Edit')),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Visually Impaired',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(onPressed: () => null, child: Text('Edit')),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  child: Text('Log Out',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () => null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 244, 54, 54)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

//////_______________NEW Method MOCKSSSSSS___________////
///

gotoCoursesListMockScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CoursesListMockScreen(),
    ),
  );
}

class CoursesListMockScreen extends StatelessWidget {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) => {
            "id": index,
            "title": "Course $index",
            "subtitle": "Subtitle $index"
          });

  CoursesListMockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Courses List'),
        ),
        body: ListView(
            children: ListTile.divideTiles(
                color: Colors.deepPurple,
                tiles: _items.map((item) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 234, 85, 231),
                      ),
                      title: Text(item['title']),
                      subtitle: Text('Adam Noah'),
                      trailing: IconButton(
                        icon: const Icon(Icons.play_circle_fill),
                        onPressed: () => gotoCourseDetailsMockScreen(context),
                      ),
                    ))).toList()));
  }
}

////Mock Course Detail Page/////>>>>

gotoCourseDetailsMockScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CourseDetailsMockScreen(),
    ),
  );
}

class CourseDetailsMockScreen extends StatefulWidget {
  @override
  State<CourseDetailsMockScreen> createState() =>
      _CourseDetailsMockScreenState();
}

class _CourseDetailsMockScreenState extends State<CourseDetailsMockScreen> {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      5,
      (index) =>
          {"id": index, "title": "Lesson $index", "subtitle": "5 Minutes"});

  bool addFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Course Details'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 400,
              child: Placeholder(),
            ),
            SizedBox(height: 20),
            Text('Course Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            Text('Adam Noah',
                style: TextStyle(
                  fontSize: 15,
                )),
            Text('4.5 out of 5.0',
                style: TextStyle(
                  fontSize: 10,
                )),
            SizedBox(height: 20),
            Container(
              height: 400,
              child: ListTileTheme(
                contentPadding: const EdgeInsets.all(10),
                iconColor: Colors.purple,
                textColor: Colors.black54,
                tileColor: Color.fromARGB(255, 255, 144, 244),
                style: ListTileStyle.list,
                dense: true,
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (_, index) => Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        _items[index]['title'],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(_items[index]['subtitle']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: Icon(addFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border),
                              onPressed: () {
                                // Setting the state
                                setState(() {
                                  addFavorite = !addFavorite;
                                });
                              }),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.play_circle_fill)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
