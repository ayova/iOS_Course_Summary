# iOS Course Summary
Cover most if not all the contents and materials visited during the course. From basic syntax, to more complex structures and features, going from optionals to delegates and UIKit elements (like table views, scrolls views, etc.)

## Contents:
### 1. Structs and Classes (and inheritance)
**Classes** --> *pass by reference*

**Structs** --> *pass by value*

![swift structs vs classes image](https://learnswiftwithbob.com/course/assets/reference-value-type-difference.png "Swift struct vs. class png")

---
### 2. Optionals
Optional types can or not contain a value of a given type. So, a variable of type `String?` could possibly hold a `String` type value, or a `nil` type value...
* Optional binding
```
let userName: String? // name is of Optional type string (i.e. can be String or Nil)
if let name = userName {
  print(name) // name here is of type String (i.e. is un-wrapped)
}
```
* Optional chaining
```
let userName: String?
let userLastName: String?

if let name = userName, let lastName = userLastName {
  print("\(name), \(lastName)"
}
```
* Shadowing
```
let userName: String?
if let userName = userName { // different variable with the same name
  print(userName)
}
```

---
### 3. Guards
Guards is very useful when it comes to optional unwrapping, and a crazy powerful tool for replacing tedious if-let statements...
```
// say we have a textField with optional value...
guard let name = nameField.text else { return }
```

---
### 4. Segues and navigation
[Official documentation](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html) about segues from Apple...

---
### 5. Protocols
A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. [More...](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)

---
### 6. Delegates
Delegates are commonly used in a hierarchy to send information back from a lower level viewController to a higher level viewController...

Delegates are a design pattern that allows one object to send messages to another object when a specific event happens. ([More...](https://medium.com/@jamesrochabrun/implementing-delegates-in-swift-step-by-step-d3211cbac3ef))

---
### 7. Data persistence
The class or struct needs to implement the Codable protocol (Decodable and Encodable)
[Tutorial](https://learnappmaking.com/codable-json-swift-how-to/)

---
### 8. UI Elements
* Stack view
* Table view
* Scroll view
* Elements
  * Picker and date picker
  * Gesture recognizer(s)
