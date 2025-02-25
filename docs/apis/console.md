# Console API

The console has an API that passes through the **DebugLog** static class.

```csharp
public static void Log(int i, LogColor logColor = LogColor.Default, LogType logType = LogType.Log)
{
    //Logic
}

public static void Log(bool b, LogColor logColor = LogColor.Default, LogType logType = LogType.Log)
{
    //Logic
}

public static void Log(string message, LogColor logColor = LogColor.Default, LogType logType = LogType.Log)
{
    //Logic
}
```
- The first parameter is always what you wish to print. 
- The second parameter is the color that you can select from a pre selected set of colors : 
```csharp
    public enum LogColor
    {
        Default, /// color of the log type
        Red,
        Green,
        Blue,
        Yellow,
        White
    }
```
- The third parameter is the log type. Each log type has a predefined color. This color can be overridden by selecting another color then default : 
```csharp
    public enum LogType
    {
        Log, //white
        Warning, // orange
        Error, // red
        Command // blue
    }
```

> For know only **int**, **bool** and **string** are supported, but feel free to request more functionalities.