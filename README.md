# iOS DeCal Lab 3 - Multiview Applications

## Overview ##
In today's lab, we'll be creating a simple multiview app using navigation controllers. Users should be able to select an image and the app will open a bigger version of the image in a new view.

![alt text](/README-images/previewSnap2.png)

Here's an interactive version of the app, which should help you when creating segues relationships: [interactive mockup](https://invis.io/UQDP88S4W#/255641436_Simulator_Screen_Shot_-_IPhone_SE_-_2017-09-27_At_17-44-11)

This lab will build the basics for your snapChat project. It aims to help you learn more about navigation controllers and tab bar controllers.

To get started, first clone this repository onto your own computer:
	
	git clone https://github.com/iosdecal/ios-decal-lab3

Open the file `snapChatProject.xcodeproj` to start the lab.

## Getting Started ##
Once you have opened the project in Xcode, notice the files present in the Navigator.

### Files we have provided ###
We have provided the following files for you to use. 

1. `ImageFeed.swift` in the `Model` folder - this file contains some useful global variables defined for you.
2. `ImagePickerController.swift` in the `View Controller` folder - this file provides abstracts you from the collection view implementation and provides some useful functions. You will be adding code to this file in this lab.
3. `ImagePreviewViewController.swift` in the `View Controller` folder - a currently dumb view controller, to preview snaps from.
4. `Main.storyboard` in the `View` folder - this is where you will be creating your Views and UI elements (buttons, labels, etc). This file is automatically created for you each time you start a new Xcode project.
5. `Assets.xcassets` in the `View` folder - contains all of the images used in the app (we have only included some sample images, but if you'd like to add your own images to customize the app, add them here). This is another file that is automatically created for you each time you create a new Xcode project.
6. `App Utilies` - contains some other files we won't be using in today's lab.

Once you've become familiar with the files in our app, open Interface Builder (`Main.storyboard`). 

## Question 1 - Get to know Main + create navigation ##

Check out Main.storyboard, and see that there are 3 view controllers.

### Question 1: part 1 

Create a navigation controller, tab bar controller, and the appropriate segues to handle the navigation found [here](https://invis.io/UQDP88S4W#/255641436_Simulator_Screen_Shot_-_IPhone_SE_-_2017-09-27_At_17-44-11). 

### Question 2: part 2

The default tab icons are not visually helpful for users. Customize the tab icons so that it looks like the image in the Overview section.

Notes: 
1. We've provided the icons in the Assets, so don't need to donwload one or create your own icons.
2. The blank view with a UILabel is just a placeholder. Don't worry. You'll build more stuff in the snapChat project. 

## Question 3 - View Transition
Now we have the storyboard structure ready. We need to implement the underlying functions to make sure that transitions between views work properly. We'll divide the functionality into two parts.

### Question 3: part 1

#### Prepare for segue
Whenever a user taps an image in the initial screen, we want the app to show the selected image in a new view. 

The new view creation we've done in Q1 but we have not implemented the transition to the new view and a way for the new view to know which image to display. In this part, you'll need to implement to achieve those 2 goals. You'll need to edit both `ImagePickerController.swift` and `ImagePreviewController.swift`.

In `ImagePickerController.swift`, we've abstracted away the collection view and given you the method, which will get called everytime the user taps an image - Feel free to add any other methods or instance variables you may need:

	func selectImage(_ image: UIImage) {}

### Question 3: part 2

#### Unwind segues
When the user wants to select another image, there are 2 ways to go back to the initial screen: one is to tap the arrow in the top navigation bar; the other is to push the button below the image.

You'll need to implement the button functionality. Make sure that whenever the user taps the button, they will be taken back to the initial image selection view. 

## Grading ##

Once you've finished the lab, you can check-off using this form https://goo.gl/forms/h08ywsWmui9gwv1R2. If you weren't able to finish before 8:30pm, make sure to let a TA know you attended (do not fill out the google form), and be sure to check-off next week at the beginning of lab.
