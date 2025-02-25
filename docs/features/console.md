# Console

The In-game console is the central piece of UDT. It controls every features of the toolkit and more.

> This section is the documentation of the usage of the console as is. In the customization section you'll find explanations on how to make your own commands for the console.
___

Refer to the [Quick Start](getting-started/quick-start.md) section to learn how to enable the in game console for your project.

## Built in commands
There is a set of built in commands that you can use to control the toolkit and enable/disable features.

Like in any console you can use the top and bottom arrow of your keyboard to navigate through the command you've already written.

Each feature has its family of commands.

### Help

```Debug Toolkit Command
    help : To show how to use everycommpands in the toolkit
```

### Metrics
```Debug Toolkit Command
    metrics enable/disable : To show or hide the metrics
```

### Freecam
```Debug Toolkit Command
    freecam enable/disable : To use the frecam. (It instantiate the cam and deletes it)
```

### Lighting
```Debug Toolkit Command
    light enable/disable : to toggle the directional light.
```

### Shadows
```Debug Toolkit Command
    shadows enable/disable : to toggle the shadows.
```

### Collider 
```Debug Toolkit Command
    collider enable/disable : to show all the collider or hide them all (This cost a lot on big scenes)
```

### Gizmos
```Debug Toolkit Command
    gizmos enable/disable : to show all gizmos or not
```

### Navmesh debug
```Debug Toolkit Command
    navA gizmos enable/disable : To draw the gizmos of the navAgent pathing

    navA info enable/disable : To show the info about the pathing of the navAgent

    navA all enable/disable : To activate all commands
```

### Time
```Debug Toolkit Command
    time 0-100 : to set the time scale. Note that the value can be between 0 and 100.

    frame 0-100 : to jump to a frame. Do you wish to pause in exactly 42 frames? Now you can.
```

### Graphism
```Debug Toolkit Command
    graphics low/medium/high/ultra : to change the quality of the graphisme. 
```
>[Note : The scriptable object of this command will have to be changed if your quality settings are not following the standard ones of an URP project (*verylow/low/medium/veryhigh/ultra*)].

## Log in the console only

There is an API to log in the in-game console only. Go in the section [Console](apis/console.md) to discover how to use it. Don't forget that the logs from Unity are retargeted to the console anyway.
