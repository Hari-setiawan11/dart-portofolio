import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portofolio Skill',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            SkillItem(
              skillName: 'Web Development (HTML, CSS, JS)',
              skillLevel: 'Advanced',
            ),
            SizedBox(height: 20.0),
            SkillItem(
              skillName: 'UI/UX Design',
              skillLevel: 'Advanced',
            ),
            SizedBox(height: 20.0),
            SkillItem(
              skillName: 'Database Management (SQL)',
              skillLevel: 'Intermediate',
            ),
          ],
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skillName;
  final String skillLevel;

  SkillItem({required this.skillName, required this.skillLevel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120.0, // Adjust the width of the skill name column as needed
          child: Text(
            skillName,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: LinearProgressIndicator(
            value: skillLevel == 'Advanced'
                ? 0.9
                : 0.4, // Adjust the progress value based on skill level
            minHeight: 20.0, // Adjust the height of the progress bar as needed
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(
              skillLevel == 'Advanced' ? Colors.green : Colors.orange,
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          skillLevel,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
