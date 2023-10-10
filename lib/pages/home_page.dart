import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/square_tile.dart';
import 'package:flutter_application_1/pages/register_page.dart';


class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
       body: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0), // Add left padding to the image
              child: Image.asset(
            'lib/images/toybot.png',
            // color: Colors.white,
            height: 300, // Set the desired height
            width: 300, // Set the desired width
          ),
            ),
          SizedBox(height: 40), // Add some space between the image and text

            
          Text(
            'Device Information',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add space between texts
          Text(
            'Battery level',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add space between texts
          Text(
            'Text commands',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add space between texts
          Text(
            'Voice commands',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add some space between the text elements
          Text(
            'Activity summary',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add space between texts
          Text(
            'Last activity summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 40), // Add space between texts
          TextButton(
            onPressed: () {
              // Add action when the button is pressed
            },
            child: Text(
              'View Full Summary',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),

          // Add some space between the text elements
          // Add other widgets here that you want to include in the body
          // Example:
          // MyTextField(),
          // MyButton(),
          // SquareTile(),
        ],
      ),
    ),
    );
  }
} 