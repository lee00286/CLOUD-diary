# Notes
## April 3, 2020
### Lesson 01 Xcode Essentials
  * How to create a new Xcode project (Swift)
  * Xcode Interface
      - Xcode Toolbar, Status Bar, Navigator Area, Editor Area, Utilities Pane

### Lesson 02 Auto Layout Tutorial
  * Auto Layout: System used to size and position elements on the screen
      - Build user intefaces that accommodate multiple screen sizes
  * `x`, `y`, `width`, `height` values for an element is referred to as the frame of the element
      - `frame(x, y, width, height)`
  * Constraint: Rule that dictates how an element is sized or positions relative to another element
  * exercise) Log-in page

## April 4, 2020
### Lesson 03 Stack Views Tutorial
  * Stack View: User interface element that acts like a container for other elements
      - Arrange elements inside of stack view 
      - Can arrange horizontally or vertically (using library or axis property of stack view)
  * Configure spacing and alignment of the elements inside of stack view
  * exercise) Log-in page (same as [lesson 02](#lesson-02-auto-layout-tutorial), but using stack view)

### Lesson 04 First User Interface
  * Constraint
      - Safe Area: Space that is guaranteed to be unobstructed by things (notch/rounded corners)
      - Can manually select view or safe area
  * Constraint Margin: The constraint respects the margins
  * UIImageView
      - Aspect Fit: Increase the image size to the maximumm size that will fit iniside the image view
      - Aspect Fill: Increase the image size until the entire image view is filled up
          - May need to clip the image 
  * Can use stack view of stack views
  * exercise) Player vs. CPU card game interface

## April 6, 2020
### Lesson 05 Swift Basics - Part I
  * What is playground
  * Commands in Swift
      - `UIKit`: Library of code that apple provides to build an app with it
          - Contains buttons, labels, templates of codes, etc.
      - `//`: Write a (one line) comment
      - `var`: Declare a new variable; can assign a new element to existing variable
      - `let`: Declare a new constant; Can't assign a new element to existing constant
      - `print(<variable>)`: Print the content (`<variable>`) of print
  * Datatypes
      - String, Bool, Int, Float, Double, Character

### Lesson 06 Swift Basics - Part II
  * Commands in Swift
      - func: Declare a new function
      - print("text \(variable)")
  * Write a function (basic function, function with paraemeters
  * Use `_` to omit argument label when calling the function
  * Return value
  * Datatype
      - Void

### Lesson 07 Swift Basics - Part III
  * Commands in Swift
      - `class`: Group functions with the same purpose
          - `Method`: Functions inside class
          - `Property`
  * Use `.` to access methods and properties inside the class

## April 7, 2020
### Lesson 08 Connecting Elements
  * ViewController.swift
      - `: UIViewController`: Subclassing; Way for classes to build-off of each other
      - Use `"IBOutlet"` to access elements inside the storyboard
  * exercise) Edit exercise done in [lesson 04](#lesson-04-first-user-interface)

### Lesson 09 User Inetraction
  * ViewController.swift
      - `Int.random(in: <start>...<end>)`: Randomize numbers in range from `<start>` to the `<end>`
      - `<name>.image = UIImage(named: <string>)`: Assign image asset named `<string>` to `<name>`
  * exercise) Edit exercise done in [lesson 08](#lesson-08-connecting-elements)

### Lesson 10 Coding Logic
  * ViewController.swift
      - `if`, `else if`, `else`
      - `&&`, `||`
      - `<name>.text = ""`: Assign String `""` to `<name>`
      - `String(<variable>)`: Convert datatype of `<variable>` to String
  * exercise) Edit exercise done in [lesson 09](#lesson-09-user-interaction)

# Xcode Tutorial Reference
  * https://youtu.be/09TeUXjzpKs
