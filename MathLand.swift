//
// The Program asks the they want to do and if they choice 1
// then they have the chance to find the area of a
// triangle, trapezoid or pentagon
// and if they choice 2 then they find the average of three numbers.
//
//  Created by Melody Berhane
//  Created on 2023-03-08
//  Version 1.0
//  Copyright (c) 2023 Melody. All rights reserved.
import Foundation


// Declare Constants
let SHAPE_ONE = "triangle";
let SHAPE_TWO = "trapezoid";
let SHAPE_THREE = "pentagon";

// Declare variables
var shapeString = " ";
var quesAns = " ";
var userInt = 0;
var triBaseFloat = 0.0;
var triHeightFloat = 0.0;
var trapBaseFloat = 0.0;
var trapHeightFloat = 0.0;
var trapSideFloat = 0.0;
var penSideDouble = 0.0;
var triArea = 0.0;
var trapArea = 0.0;
var userNum1Float = 0.0;
var userNum2Float = 0.0;
var userNum3Float = 0.0;
var average = 0.0;
var penArea = 0.0;

// Runs the program once.
repeat {
    // Intro.
    print("Hello! Welcome to Melody's MATH WONDERLAND!")
    print("Please enter 1 to find the area of", terminator:"")
    print(" a triangle, trapezoid or Pentagon", terminator:"")
    print(" and 2 to find the average: ")
    // Usage of try catch to detect errors.
    if let userInt = Int(readLine()!) {
        // If user inputs 1 they want to find the area of a shape
        if userInt == 1 {
            // Asks user what shape they would like
            print("Would you like to find the area of a", terminator:"")
            print(" Triangle, Trapezoid or Pentagon: ")
            shapeString = readLine()!

            // Finds the area of a triangle.
            if shapeString == SHAPE_ONE {
                // Gets the base
                print("What is the base: ")
                if let triBaseFloat = Float(readLine()!) {
                    // Gets the height
                    print("What is the height: ")
                    if let triHeightFloat = Float(readLine()!) {
                        // Calculate area of triangle
                        triArea = Double(triBaseFloat * triHeightFloat) / Double (2.0)
                        // Display the area
                        print("The area of the triangle is",triArea,"cm^2")
                    // If the input is not a float display error
                    } else {
                        // Displays error.
                        print("Please enter positive values.")
                    }
                }else {
                    // Displays error.
                    print("Please enter positive values.")
                }
            } else if shapeString == SHAPE_TWO {
                print("What is the side length: ")
                if let trapSideFloat = Float(readLine()!) {
                    print("What is the base: ")
                    if let trapBaseFloat = Float(readLine()!) {
                        print("What is the height: ")
                        if let trapHeightFloat = Float(readLine()!) {
                            // Calculate area of trapezoid
                            trapArea = (Double(trapBaseFloat + trapSideFloat) * Double(trapHeightFloat)) / Double (2.0);
                            print("The area of the trapezoid is",trapArea,"cm^2")
                        } else {
                            // Displays error.
                            print("Please enter positive values.")
                        }
                    } else {
                        // Displays error.
                        print("Please enter positive values.")
                    }
                // If the input is not a float display error
                }else {
                    // Displays error.
                    print("Please enter positive values.")
                }
            } else if shapeString == SHAPE_THREE {
                print("What is the side length: ")
                if let penSideDouble = Double(readLine()!) {
                    penArea = ((penSideDouble * penSideDouble) * (sqrt(5*(5+(2 * (sqrt(5))))))) / Double(4.0)
                    print("The area of the pentagon is",penArea,"cm^2")
                }else {
                    // Displays error.
                    print("Please enter positive values.")
                }
            // If the input is not one of the shapes display error
            } else {
                print("Sorry, the input does not work, please try again.")
            }
        // Find the average of 3 numbers
        } else if userInt == 2 {
            print("What is your first num(0-100): ")
            // Convert number to float
            if let userNum1Float = Float(readLine()!) {
                print("What is your second num(0-100): ")
                // Convert number to float
                if let userNum2Float = Float(readLine()!) {
                    print("What is your third num(0-100): ")
                    // Convert number to float
                    if let userNum3Float = Float(readLine()!) {
                        average = Double(userNum1Float + userNum2Float + userNum3Float) / Double(3)
                        print("The average is",average)
                    }
                }
            }
        // If the input is not a float display error
        } else {
            print("Sorry, input is invalid.")
        }
    // If the input is not one or two display error
    } else {
        // Displays error to the user
        print("Please enter valid input.")
    }
    // Play again loop
    repeat {
        // Ask if they want to play again
        print("Would you like to play again?(y/n): ")
        //Get next line as a string
        quesAns = readLine()!
        // If n then end program
        if quesAns == "n" {
            print("Thank you for playing!!");
        // If any other letter or num is 
        //used ask them again to enter a valid number
        } else if quesAns == "y" {
            print("Here you go again!")
        } else {
            print("Please input a valid string");
        }
    // Do they while the return is not y or n
    } while quesAns != "y" && quesAns != "n";
// Run the whole program when they say yes to play again.
} while quesAns == "y"