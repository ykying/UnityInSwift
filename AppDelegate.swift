//
//  AppDelegate.swift
//  NativeSwift
//
//  Created by King Ying on 20/9/2019.
//  Copyright © 2019 xxx. All rights reserved.
//

import UIKit
import UnityFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    private lazy var unityFramework: UnityFramework = {
        if let bundle = Bundle(path: "\(Bundle.main.bundlePath)/Frameworks/UnityFramework.framework") {
            if !bundle.isLoaded {
                bundle.load()
            }
            let fw = bundle.principalClass!.getInstance()!
            var tmp = _mh_execute_header
            fw.setExecuteHeader(&tmp)
            fw.setDataBundleId("com.unity3d.framework")
            
            return fw
        }
        return UnityFramework()
    }()
    
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func getUnityFramework() -> UnityFramework {
        return self.unityFramework
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.initUnity(launchOptions: launchOptions)
        
        return true
    }
    
    func initUnity(launchOptions: [UIApplication.LaunchOptionsKey: Any]?){
        let fw = self.unityFramework
        fw.runEmbedded(withArgc: CommandLine.argc, argv: CommandLine.unsafeArgv, appLaunchOpts: launchOptions)
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        self.unityFramework.appController()?.applicationWillResignActive(application)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        self.unityFramework.appController()?.applicationDidEnterBackground(application)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        self.unityFramework.appController()?.applicationWillEnterForeground(application)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        self.unityFramework.appController()?.applicationDidBecomeActive(application)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        self.unityFramework.appController()?.applicationWillTerminate(application)
    }
}
