# Collider Gizmos

The collider Gizmos is composed of four static method. You can use them anywhere to make your own instances the gizmos, and draw your own shape based on a collider. 

- The **targetObject** is the gameObject on which your gizmos drawer is going to be instantiated.
- The second parameter is a **collider**. 
- The third is the **color** you want to draw with.

```csharp
    public static Gizmo_Collider DrawBoxGizmos(GameObject targetObject, BoxCollider boxCollider, Color colliderColor)
    {
        // Logic
    }

    public static Gizmo_Collider DrawSphereGizmos(GameObject gameObject, SphereCollider sphereCollider, Color gizmosColor)
    {
        // Logic
    }

    public static Gizmo_Collider DrawCapsuleGizmos(GameObject gameObject, CapsuleCollider capsuleCollider, Color gizmosColor)
    {
        // Logic
    }

    public static Gizmo_Collider DrawMeshGizmos(GameObject gameObject, MeshCollider meshCollider, Color gizmosColor)
    {
        // Logic
    }
```

In addition to this API you can use the **DrawBox** method to repurpose the drawer to draw any box, anywhere.
- The first parameter is the **size** corresponds to the size of your box.
- The second parameter is the **center** corresponds to the position of the box relative to the position of the drawer.
- The third is the **color** you want to draw with.

```csharp
    public void DrawBox(Vector3 size, Vector3 center, Color color)
    {
        // Logic
    }
```


___ 
> We plan on completing this API with way more functionalities.
> We also plan to add support for 2d collider support. 