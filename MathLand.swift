//
// This program calculates the length for one
// board with given width and height from user.
//
//  Created by Melody Berhane
//  Created on 2023-03-04
//  Version 1.0
//  Copyright (c) 2023 Melody. All rights reserved.
import Foundation


// Declare Constants
let SHAPE_ONE = "triangle";
let SHAPE_TWO = "trapezoid";
let SHAPE_THREE = "pentagon";

// Declare variables
var userString = " ";
var shapeString = " ";
var triBaseString = " ";
var triHeightString = " ";
var trapBaseString = " ";
var trapHeightString = " ";
var trapSideString = " ";
var penSideString = " ";
var quesAns = " ";
var userNum1Sr = " ";
var userNum2Sr = " ";
var userNum3Sr = " ";
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

repeat {
    // Intro.
    print("Hello! Welcome to Melody's MATH WONDERLAND!")
    print("Please enter 1 to find the area of", terminator:"")
    print(" a triangle, trapezoid or Pentagon", terminator:"")
    print(" and 2 to find the average: ")
    // Usage of try catch to detect errors.
    if let userInt = Int(readLine()!) {
        if userInt == 1 {
            // Get user input
            print("Would you like to find the area of a", terminator:"")
            print(" Triangle, Trapezoid or Pentagon: ")
            shapeString = readLine()!

            if shapeString == SHAPE_ONE {
                print("What is the base: ")
                if let triBaseFloat = Float(readLine()!) {
                    print("What is the height: ")
                    if let triHeightFloat = Float(readLine()!) {
                        // Calculate area of triangle
                        triArea = Double(triBaseFloat * triHeightFloat) / Double (2.0)
                        print(triArea)
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
                            print(trapArea)
                        } else {
                            // Displays error.
                            print("Please enter positive values.")
                        }
                    } else {
                        // Displays error.
                        print("Please enter positive values.")
                    }
                }else {
                    // Displays error.
                    print("Please enter positive values.")
                }
            } else if shapeString == SHAPE_THREE {
                print("What is the side length: ")
                if let penSideDouble = Double(readLine()!) {
                    penArea = ((penSideDouble * penSideDouble) * (sqrt(5*(5+(2 * (sqrt(5))))))) / Double(4.0)
                    print(penArea)
                }else {
                    // Displays error.
                    print("Please enter positive values.")
                }
            } else {
                print("Sorry, the input does not work, please try again.")
            }
        } else if userInt == 2 {
            print("What is your first num(0-100): ")
            if let userNum1Float = Float(readLine()!) {
                print("What is your second num(0-100): ")
                if let userNum2Float = Float(readLine()!) {
                    print("What is your third num(0-100): ")
                    if let userNum3Float = Float(readLine()!) {
                        average = Double(userNum1Float + userNum2Float + userNum3Float) / Double(3)
                        print(average)
                    }
                }
            }
        } else {
            print("Sorry, input is invalid.")
        }
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
        } else {
            print("Please input a valid string");
        }
    // Do they while the return is not y or n
    } while quesAns != "y" && quesAns != "n";
} while quesAns == "y"