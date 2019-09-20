# Unity (with Pods support) in Natvie Swift
Tested on Xcode 10.3 (10G8) + Unity 2019.3.0b3 (Beta version)

### 1. Create Unity project
Create a new Unity project with Google Cardboard SDK support.
File -> Build Settings -> Select Platform (iOS) -> Switch Platform -> Player Settings
Make changes like below
 
![Image](./images/1.png)

Click "Build" and select a folder to save the output. It is better to put all projects under a same folder. For example:\
**UnityInSwift**\
-> **ImUnity** (All Unity files)\
-> **NativeSwift** (Native iOS Project)

![Image](./images/2.png)
![Image](./images/3.png)

### 2. Create a Workplace to include all projects
Create workplace named "UnityInSwift" and save to **UnityInSwift** folder\
![Image](./images/4.png)
![Image](./images/5.png)

Use Add Files to "UnityInSwift" to add all projects (Unity + Pods + Swift)\
![Image](./images/6.png)

And the result will looks like\
![Image](./images/8.png)

### 3. Test Run Unity
Select "Unity-iPhone" in TARGETS and setup the provisioning. And you should able to build&run it in Device.\ 
![Image](./images/9.png)


### 4. Include UnityFramework into Native Project
Add UntiyFramework to NativeSwfit project\
-> **Set "Bitcode" support to NO**\
-> **Include Unity-iPhone -> "Data" folder to UnityFramework**

![Image](./images/10.png)
![Image](./images/11.png)


### 5. Ref: AppDelegate.swift file for how to start the unity project.

### 6. DONE :)



