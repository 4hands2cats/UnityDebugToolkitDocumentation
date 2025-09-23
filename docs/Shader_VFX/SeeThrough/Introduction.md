Have you ever wondered how those effects are made in Baldurs Gat or other games ? I mean seing through walls. 

Well thanks to this asset it's now easy.

Due to some bugs with Unity 6.0 & 6.1 in the shadder graph this asset is only availible starting in Unity 6.2. There is no work around to make it work in previous version of the engine, because the engine was bugged.

## Getting started 
To use just look at the demo scene. 

### The control
There is already a prefab named **Cam_SeeThrough** it uses cinemachine by default, but you can always remove its Cinemachine Brain if you don't wish to work with cinemachine. 

On this prefab there is the **PassThroughControl** monobehavior. It's role is to control the feature. It pools materials, replaces the right materials etc...

You've got to give it you're **Camera Transform**, a **Target Transform** to follow, the gameobject associated to this target transform, the **PassTrought Material**, the **Radius** of the hole and the **Allowed to be replaced** layers.

- For the radius the basic value is 1.5 you can increase it or lower it. Just note that this radius is decoupled from the one of the material.
- The the allowed layer note that you should include the layer of your target.

### The material
The material is a made thanks to the shader graph. The shader is a fully fonctionnal URP_lit that includes the PassThrough SubShader. You can make your own system or shader including this node. Also do not hesitate to request more features.

I will not document the PBR part of the material since it's the same as the normal URPLit material, but I will explain the seethrough params.

After the **Emission** catégorie you get a **PassTrough** and a **Edge** category.

- The **PassThrough** controls the mask and the transparency. 
  - **LookDirection** and **LookAtPosition** are controled by the control script.
  - **TowardCam** Gives you control over the direction of the cone of dissolution. 
  - **Threshold** Controls the Radius of the hole
- The **Edge** gives you control on the edges of the cut.