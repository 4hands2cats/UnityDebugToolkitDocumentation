# Static commands

> Introduced in V1.2

There is now a way to directly create debug command for the console in your code base using attributes. 

There are three different attributes available : 
- [SimpleCommand] : a simple command that will be executed when the command is called
- [BooleanCommand] : a command that will return a Boolean value
- [VectorCommand] : a command that will return a Vector4 or vector3 or vector2 or vector1

Please Notice that the Enum command is not supported. If you fee like you need it request it on our discord :D.

Better then any long explanation here is a code sample you can find in the project. The main idea of this sample is to propose an integration of the debug toolkit console commands in a class that uses the Singleton anti-pattern.

You can find this script in the sample folder.

```csharp
 public class CommandSample : MonoBehaviour
 {
     /// <summary>
     /// Since the commands attributs are only working on static method 
     /// a singleton pattern can be a sollution for a debbuging class.
     /// 
     /// Even if your methods got to be static, they can be internal/private/public
     /// </summary>
     private static CommandSample Instance { get; set; }

     [SerializeField] private Transform playerTransform;

     private void Awake()
     {
         Instance = this;
     }

     [SimpleCommand("Hi")]
     public static void SayHi()
     {
         Debug.Log("HelloWorld");
     }

     [BooleanCommand("navA", "move", "stop")]
     public static void SetAgentOnOff(bool isMoving)
     {
         NavMeshAgent[] agents = FindObjectsByType<NavMeshAgent>(FindObjectsInactive.Include, FindObjectsSortMode.None);
         for (int i = 0; i < agents.Length; i++)
         {
             agents[i].isStopped = !isMoving;
         }
     }

     /// <summary>
     /// Note this command would work for a method with a param as a float, a Vector2, a Vector3 or either a Vector 4
     /// </summary>
     /// <param name="position"></param>
     [VectorCommand("player-tp")]
     public async static void TeleportPlayer(Vector3 position)
     {
         Instance.playerTransform.GetComponent<ThirdPersonController>().enabled = false;
         Instance.playerTransform.GetComponent<CharacterController>().enabled = false;
         Instance.playerTransform.position = position;

         await Awaitable.NextFrameAsync();

         Instance.playerTransform.GetComponent<ThirdPersonController>().enabled = true;
         Instance.playerTransform.GetComponent<CharacterController>().enabled = true;
     }

     [SimpleCommand("scene-reload")]
     public static void ReloadScene()
     {
         SceneManager.LoadScene(SceneManager.GetActiveScene().name);
     }
 }
```

> There is no support yet for non-static methods but its doable. If you feel like you are needing those, just contact us on the discord.