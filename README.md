# iOS_LoginApp

IPhone 14 pro

### Project Description
This project contains a login page for an application, which is also adaptive for SE, 14 pro screens with screen rotations.

### Installation
No secondary libraries were used here, only **UIKit**. You can download the project from GitHub as a zip file and then open it in the **xCode** application. (No additional installations are required)


### Usage
I used **storyboard** for screen design (you can see this inside the main file). Then, I connected the elements to the code.

<img width="518" alt="Снимок экрана 2023-08-22 в 17 12 27" src="https://github.com/sembaynaz/iOS_LoginApp/assets/96616194/f5e9a8cc-e4ce-4d62-b92a-02e5486bc78d" height = 400>

-> Here, we can see which elements are connected.

<img width="518" alt="Снимок экрана 2023-08-22 в 17 13 48" src="https://github.com/sembaynaz/iOS_LoginApp/assets/96616194/6ad78069-dd9a-4576-9068-de90effe92b8" height = 400>

-> We can also see whether individual elements are connected.

Now let's move on to the code:
The configureView() function adjusts the elements; in my case, it rounds the corners of the TextField and Button.
The hideKeyboardWhenTappedAround() and dismissKeyboard() functions are used to close our keyboard.
The viewWillTransition() function changes constraints when we rotate the screen.

***Constraints** determine the positioning of elements on the screen.

### Contribution
For a better understanding of the code, you can design a registration screen and also set up screen rotation.

### Author
git: sembaynaz

mail: nazerke.sembay11@gmail.com 

telegram: @sembaynaz
