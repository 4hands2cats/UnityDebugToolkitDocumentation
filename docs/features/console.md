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
- Type *graphics*/*Graphics*/*-g*/*-G* followed by *low*/*l* or *medium*/*m* or *high*/*h* or *ultra*/*u* to change the quality settings. [Note : This scriptable object of this command will have to be changed if your quality settings are not following the standard ones of an URP project (verylow/low/medium/veryhigh/ultra)].

## Debugs logs