When I started trying to write a Mac app for the first time, I started out knowing what I wanted to achieve but not knowing how to go about it. I spent a lot of time googling for Mac development help and found very little of it. What i did find was mostly related to Objective-C and not Swift/SwiftUI.

So, I spent a lot of time going round in circles, extracting the bits that I thought relevant and heading down a lot of blind alleys.

This project is part of a series of development notes I want to write to document some of the stuff I learnt along the way. The note that goes with it can be found on my web site.

 [Know when your window is closing](http://www.sabarnett.co.uk/blogPage.php?id=windowClosing)

When your view contains data that has to be manually saved (to a file for example), it is critical to know if your app is terminated or the window is closed. I found that out the hard way by making multiple edits to a file and promptly losing them all when I closed the window without saving! This note provides a mechanism that lets us know when the app is terminated or when a specific window is closed, allowing us to take additional actions. 
