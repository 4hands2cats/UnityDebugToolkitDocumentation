
Join the discord : https://discord.gg/AE6JKG7xnK
Access the online doc : https://4hands2cats.github.io/UnityDebugToolkitDocumentation/



____

# RPGToolkit Documentation

____

This is going to be in term the biggest and most complete game toolkit on the asset store. But to found the dev we need to make it part by part.

If you bought one of the asset listed bellow : congratulation you are now part of the RPGToolkit ecosystem.

- [⚡ BeautifullButtons](BeautifullUI/BeautifullButtons/BeautifullUI.md)

___



This is the UI framework that powers the RPG Toolkit.

You might have noticed but on time to time unity UI transforms into a mess. Hierachy with hundreds of elements to have slightly dynamic elements. The goal of beautifull UI is to make sure it is easy and performant to make aweseome UIs. 

In this section you are going to learn how to work with the Beautiful UI framework. 

Keep in mind that the navigation of Beautifull UI is fully customized and compatible with one of Unity. 



The navigation of the framework is custom. The main reason is that the original buttons of unity do not give control over the state of the button and the shaders. The secondary reason being that I don't like the selectable framework that has a huge impact on performances (I mean for UI).

The navigation system requires the addition of the **InputDeviceManager** on the game object that has the event system.

For now the navigation only supports Explicit mode. It means that you just have to fill the Explicit Nav with your navigation targets.
![alt text](BeautifullUI/asset/Nav.png)

If you want to navigate from one of the beautiful components to a selectable you just have to fill the Nav. 

If you want to navigate from a selectable to to a beautifull component you have to add a **Selectable Navigation Binder** component on the same gameobject as your beautifull component.  

Make sure to tick the Usenavigation and IsInteractable


## The component
The **Custom Button** is a component that works like a normal button. It exposes all the button life cycle events with Unity events. 

The button requires a Material to work. You should use or make a varient of one of the BB_Materials (ex : BB_Fibers_02).

The good thing with those buttons is that since they are shader based you can go wild without ever suffering in terme of performances.

Use Nav : Enables the navigation
IsInteractable : Makes the button interactable
AutoMatVar : Lets the button handle the material of the image. If you want to swap the mat at runtime using another scipt, just untick it.
Selected On Click : Select the gameobject of the button when clicking on the button.

Don't forget to set up your menu theme to choose the gradients that are going to be applied to the buttons.

## The shader
The shader of the buttons is based on the Pattern, Distort and Dissolve traditional Vfx shader.

The textures can be mixed and match to make unic effects. Basically the Defform texture is modifying the UV of the Pattern Texture and the dissolve texture is erasing some areas.

Don't go to insane on the defform power is you want your pattern to be recognizable. 

All the textures can scroll, modify the speeds to have unic effect. Always try to have all the texture going at different speeds for more interesting effects.

The inner light is a simple diamond mask acting like a Vignette effect. 

You can enable and control the shape of the borders of the button. Note the CornerRadii are also impacting the base button shape

The framework allows to make two colors gradients you can control its orientation with the Gradient Rotation (Get crazy and animate that with a script for more impressive effects).

The button pix size should be the one of your anchored delta size (the ratio is the important thing).

![alt text](BeautifullUI/image.png)

Have fun !!

