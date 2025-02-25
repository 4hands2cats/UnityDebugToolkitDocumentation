# RaycastTo Gizmos

This component has a simple API for now. 
Notice that for now it always draw from the position of the drawer to another position. If you need a feature to draw from a selected position to another one, please ask on the discord.

Those methods are pretty simple to come around. Either pass a GameObject or a position you want to draw to an then choose the color.

```csharp
    public void DrawTo(GameObject target, Color color)
    {
        // Logic
    }

    public void DrawTo(Vector3 targetPosition, Color color)
    {
        // Logic
    }
```
