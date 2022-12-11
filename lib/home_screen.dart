import 'package:flutter/material.dart';

import 'main.dart';
import 'data_and_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TevaLearn | Home')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Hi Haytham!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            Text('What do you want to learn?!',
                style: TextStyle(
                  fontSize: 15,
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: null, child: Text('Explore')),
                ElevatedButton(
                    onPressed: () => gotoCoursesListMockScreen(context),
                    child: Text('My Courses')),
                ElevatedButton(
                    onPressed: () => gotoAccountScreen(context),
                    child: Text('Account')),
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text('Search'),
                hintText: 'example: Braille 101',
                prefixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              child: Categoryview1(),
            ),
          ],
        ),
      ),
    );
  }
}
