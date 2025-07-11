Items in the system are defined using the ItemSO Scriptable Object. You can find some sample items in:
Assets/4Hands2Cats/EscapeGameToolkit/Inventory/Items/Sample-data

## Creating a New Item
To create a new item, right-click in the Project window and go to:
Create > EGT > Inventory > Items > BaseSOItem

## Item Setup
To be compatible with the save/load system, all items must be added to the Item Library.

Each item can have a custom size and shape, which defines how it fits within the grid-based inventory.
By choosing Custom mode, you can design items with any shape, perfect for Tetris-like inventory behavior.

You can also specify whether the item is stackable enabling the inventory system to manage multiple quantities in a single slot.

Finally, assign a type and a prefab to represent the item visually in 2D or 3D.
To make the item interactive, add an interaction component (like the GrabInteraction) to the prefab.

