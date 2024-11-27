# bmi-calculator_app
BMI that helps you calculate your body per mass index
A simple and intuitive BMI Calculator app built using Flutter. This app allows users to calculate their Body Mass Index (BMI) by entering their weight and height. It provides the result with an interpretation of the BMI value (e.g., underweight, normal, overweight).

Features
Weight and Height Input: Users can input their weight in kilograms and height in meters (or centimeters).
BMI Calculation: BMI is calculated using the formula:
BMI = weight (kg) / height (m)^2
BMI Interpretation: The app displays a category based on the BMI value:
Underweight: BMI < 18.5
Normal weight: BMI 18.5 - 24.9
Overweight: BMI 25 - 29.9
Obese: BMI >= 30
Simple UI: Clean and user-friendly interface for ease of use.
How the App Works
The user enters their weight and height into the input fields.
The BMI is calculated as soon as the "Calculate" button is pressed.
The app displays the BMI value along with the corresponding category (e.g., "Normal weight").
If the user changes the weight or height, the result updates immediately.
Customization
Theme: You can easily customize the app's theme by modifying the ThemeData in the main.dart file.
Units: The app currently uses kilograms and meters for weight and height, respectively. You can modify the input units if you prefer to use pounds or inches.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Acknowledgements
This project was built with Flutter, a UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
Thanks to the Flutter community for their incredible resources and tutorials.
