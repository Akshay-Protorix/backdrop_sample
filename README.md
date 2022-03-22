<p align="center"><h1 align="center">Backdrop Scaffold</h1></p>

<p><h3 align="center"><samp>Learn how to use a Backdrop Scaffold in your flutter apps</h3></p>

<p align="center"><samp><b> Hello everyone! <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px"> </b></samp></p>

<p align="center"><samp><b> Can we have fun with Backdrop of material design with flutter?</b></samp></p>

Backdrop consists of two layers: a back layer and a front layer.Back layer controls the actions and context displayed and informs the front layer’s content.

In this blog, we will be Exploring Backdrop Scaffold In Flutter. We will see how to                  implement a backdrop scaffold with a sample program and how to use it in your flutter applications.


## Table of content

- [Introduction](#introduction)
- [Implementation](#implementation)
- [Navigation with backdrop](#navigation)
- [Conclusion](#conclusion)




## <a id="introduction">💫 Introduction

Backdrop is a StatefulWidget whose state manages the position and animation of the front layer. 
Like Scaffold.of, Theme.of and MediaQuery.of,Backdrop is an InheritedWidget and therefore the BuildContext context passed to Backdrop.of(context) should be of a Widget that is under the BackdropScaffold in the "widget tree".
  
In other words, Backdrop.of called inside a widget where the BackdropScaffold is initialised will not work explicitly, since the context passed is of the widget that will build BackdropScaffold therefore above BackdropScaffold. 
  
We can solve this by either making a separate Widget where Backdrop.of needs to be used and make it the "child" of BackdropScaffold or wrap the Backdrop.of usage around Builder widget so that the "correct" context (from Builder) is passed to Backdrop.of.
  
This article gives an illustration of how to use a BackdropScaffold.
  
  
<h3><samp>Demo:</h3>

![ezgif com-gif-maker](https://user-images.githubusercontent.com/101086428/159467171-cb5f4013-67d0-442a-b7cc-407279fb287e.gif)



This demo gif shows how the BackdropScaffold works in your flutter applications. It shows how the front layer will work with custom toggle buttons when the user taps the button.





## <a id="implementation"> 🚀 Implementation


<h3><samp>Step 1</h3>

Add latest dependencies in your pubspec.yaml.

backdrop: ^0.7.1


<h3><samp>Step 2</h3>

Now we can use the BackdropScaffold instead of the Scaffold in our app. For the proper working of backdrop there will be a frontLayer and backLayer to be defined. Also use BackdropAppbar instead of Appbar. Don’t forget to add the library.

  
![Screenshot from 2022-03-20 15-21-06](https://user-images.githubusercontent.com/101086428/159467467-8b389be6-ebc6-4606-8b58-3569cf02b6ec.png)





<h3><samp>Output</h3>

  ![BeFunky-collage](https://user-images.githubusercontent.com/101086428/159467534-168478f3-12e7-4421-b86c-a2656078b6af.jpg)



You can also create custom toggle button by using BackdropToggleButton()

  ![Screenshot from 2022-03-20 16-01-48](https://user-images.githubusercontent.com/101086428/159467579-8356fd9f-2de3-46c5-b371-63e5973b05d4.png)


You can customise the height of the header by headerHeight inside the BackdropScaffold.

headerHeight: 200,
  
  ## <a id="navigation">📲 Navigation with backdrop

We can use backdrop for navigation. For that use the BackdropNavigationBackLayer as backLayer.

BackdropNavigationBackLayer has a property item which represents the list of elements shown on the back layer.For the front layer , it has to be set manually depending on the current index,which can be accessed with the onTap function.

![Screenshot from 2022-03-20 16-48-46](https://user-images.githubusercontent.com/101086428/159467626-3c99690d-eb6d-4f1a-93a5-c03a16cb5268.png)







<h3><samp>Output</h3>

![ezgif com-gif-maker(1)](https://user-images.githubusercontent.com/101086428/159467686-3a884c4a-4de2-45a2-af02-e0ceb319eeda.gif)


## <a id="conclusion">🕮 Conclusion

This article shows how we can use the Backdrop Scaffold in our projects.You can change the code as you wish,this is a sample program to get the idea of Backdrop Scaffold.
  
I hope you understood about the working of Backdrop Scaffold in your flutter projects.
  
💖 Thanks for your valuable time 💖
  
Please let me know if you are facing any issues on this.I would love to improve.
    
                   
Clap 👏 If this article helps you.
