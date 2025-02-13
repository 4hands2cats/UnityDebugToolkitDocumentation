# Debug Toolkit for Unity (UDT)

> Thanks for using the UDT.
Unity 6+ is supported for this asset. 

This documentation aims to get you ready to use and modify UDT for your awesome projects. 

The current version of the toolkit 1.0.

If you are looking for the last patch note please check the [Patch Notes](patchnote.md).
If you are looking for features in development take a look at the [What's Next](whatNext.md) section.
___
## Features
UDT is composed of four elements : 
- A modular console, for which can create custom commands but also log anything you want at runtime. Maybe you wish to have a simple way to kill your player, teleport to some place, show all the colliders that are in the scene or maybe you want to go frame by frame to know what is happening. Now its a simple command line.
- A system of optimized runtime Gizmos with an easy to use API. It makes your debugging way easier. Control them with the console, or as a standalone feature.
- A FreeCam to inspect your scene at runtime. With a simple command in the console activate or deactivate the FreeCam and navigate through your scene.
- A metrics system to now your fps, the number of batches, and your tris/vert usage.
# Introduction to UDT

This toolkit aims to make your life easier while debugging your game.\
In this version we focused on the run time debugging

We are aiming for a load of improvements in the future versions of this toolkit. If you want to now more about the next features please check the [What's Next](whatNext.md) section.
___

In the next few sections you are going to learn how to import UDT to your project and how to use it.

# Install UDT

> Make sure that you are using Unity 6 or above.

## Package manager
Get into the unity package manager at the top of the Unity Engine window and look for UDT in your assets 

![alt text](../assets/packManager.png)

Click on the **download** button at the bottom right of the menu.

Once the files are downloaded, import them in your project by clicking on the **Import** button.
# Quick start guide

To add the debug fonctionalities to your scene 
# Demo Scene Tour

The demo scene is based on the third person template of Unity. We've added our debug toolkit in this scene.
# Console

The In-game console is the central piece of UDT. It controls every features of the toolkit and more.

> This section is the documentation of the usage of the console as is. In the customization section you'll find explanations on how to make your own commands for the console.
___

Refer to the [Quick Start](getting-started/quick-start.md) section to learn how to enable the in game console for your project.

## Built in commands
There is a set of built in commands that you can use to control the toolkit and enable/disable features.

Like in any console you can use the top and bottom arrow of your keyboard to navigate through the command you've already written.

### Simple
- Type *help*/*Help*/*-h*/*-h* in the console to get a list of all the available commands.

### Booleans
- Type *metrics*/*Metrics*/*-m*/*-M* followed by *enable*/*e* or *disable*/*d* to enable or disable the metrics.

- Type *freecam*/*Freecam* followed by *enable* or *disable* to enable or disable the freecam.

- Type *light*/*-l* followed by  *enable*/*e* or *disable*/*d* to enable or disable all the lights in the scene.

- Type *shadows*/*-s* followed by  *enable*/*e* or *disable*/*d* to enable or disable all the shadows in the scene.

- Type *Collider*/*collider*/*-c*/*-C* followed by *enable*/*e* or *disable*/*d* to enable or disable the in game gizmos rendering for the collider (beware on large scene there might be a small freeze when enabling). This command also activates all the other in game gizmos [going to change in next version]

### Vector
- Type *Time*/*time*/*-t*/*-T* followed by a float value between 0 and 100 to change the time scale of your game.

- Type *Frame*/*frame*/*-f*/*-F* followed by a float value x to navigate x frames in the future. [Note : If the number of x is too high you might wait a long time].

### Enum
- Type *graphics*/*Graphics*/*-g*/*-G* followed by *low*/*l* or *medium*/*m* or *high*/*h* or *ultra*/*u* to change the quality settings. [Note : This scriptable object of this command will have to be changed if your quality settings are not following the standard ones of an URP project (*verylow/low/medium/veryhigh/ultra*)].

## Debugs logs
# Free Cam
# Gizmos
# Metrics

The metrics are enabled using the interactive console with the command :
> *metrics*/*Metrics*/*-m*/*-M* followed by *enable*/*e* or *disable*/*d* to enable or disable the metrics.

For now it show the FPS, the number of batches, the number of tris and the number of vert. In future updates it'll help you to do some profiling.
# About us

At 4Hands2cats, we create debugging tools to streamline development. As two devs (and two cats), we focus on robust, user-friendly solutions for Unity. Our first asset, a complete debug toolkit, works in build and runtime for full control. We're committed to improving and expanding our tools.
# FAQ
# What's next ? 
# Patch Note
This section is the log of all the changes and additions to UDT since release.

## V 1.0
UDT Release : 
- In game Console
- In game gizmos
- In game FreeCam
- In game basic metrics
